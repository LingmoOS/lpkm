// Deb solution
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <stdio.h>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <sys/wait.h>
#include <curl/curl.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>

using namespace std;
#define PATH "/etc/lingmoPkg.d/lingmoPkg.list.src"

size_t dl_req_reply(void *buffer, size_t size, size_t nmemb, void *user_p)
{
	FILE *fp = (FILE *)user_p;
	size_t return_size = fwrite(buffer, size, nmemb, fp);
	//cout << (char *)buffer << endl;
	return return_size;
}
int download_progress(char *progress_data,
                            double t, /* dltotal */
                            double d, /* dlnow */
                            double ultotal,
                            double ulnow){
    static char bar[120];
    const char *lable = "|/-\\";
    int i = 0;
	if(t){
		i = d*100.0/t;
	}
    printf("%s [%-100s][%d%%][%c]\r", progress_data, bar, i, lable[i % 4]);
    //fflush(stdout);
    bar[i] = '>';
    i++;
    bar[i] = 0;
    return 0;  
}
//http GET请求文件下载  
CURLcode dl_curl_get_req(const std::string &url, std::string filename)
{
	//int len = filename.length();
	//char* file_name = new char(len + 1);//char*最后有一个结束字符\0
	//strcpy_s(file_name, len + 1, filename.c_str());

	const char* file_name = filename.c_str();
	char* pc = new char[1024];//足够长
	strcpy(pc, file_name);

	FILE *fp = fopen(pc, "wb");

	//curl初始化  
	CURL *curl = curl_easy_init();
	// curl返回值 
	CURLcode res;
	if (curl)
	{
		//设置curl的请求头
		struct curl_slist* header_list = NULL;
		header_list = curl_slist_append(header_list, "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko");
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, header_list);

		//不接收响应头数据0代表不接收 1代表接收
		curl_easy_setopt(curl, CURLOPT_HEADER, 1);

		//设置请求的URL地址 
		curl_easy_setopt(curl, CURLOPT_URL, url.c_str());

		//设置ssl验证
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, false);
		curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, false);

		//CURLOPT_VERBOSE的值为1时，会显示详细的调试信息
		curl_easy_setopt(curl, CURLOPT_VERBOSE, 0);

		curl_easy_setopt(curl, CURLOPT_READFUNCTION, NULL);

		//设置数据接收函数
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &dl_req_reply);
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);

		curl_easy_setopt(curl, CURLOPT_NOSIGNAL, 1);

		//设置超时时间
		curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 600); // set transport and time out time  
		curl_easy_setopt(curl, CURLOPT_TIMEOUT, 600);

    // curl_easy_setopt(curl, CURLOPT_PROGRESSFUNCTION, download_progress); 
    curl_easy_setopt(curl, CURLOPT_XFERINFOFUNCTION, download_progress);

		// 开启请求  
		res = curl_easy_perform(curl);
	}
	// 释放curl 
	curl_easy_cleanup(curl);
	//释放文件资源
	fclose(fp);

	return res;
}

int get_id(char *rpi_id, int size);

void getMatchingNames(string input, vector<string>& matches) {

  fstream file;
  file.open("/opt/cache/Packages");

  if(file.is_open()) {

    string line; 
    string target = "Filename: ";

    while(getline(file, line)) {

      size_t pos = line.find(target);
      if(pos != string::npos) {

        string name = line.substr(pos + target.length());

        //临时使用deb包的文件名作为匹配条件，后续可以改为使用lpk包名作为匹配条件
        size_t underscore = name.find(".deb"); 
        if(underscore != string::npos) {
          string part = name.substr(0, underscore);
          
          if(part.find(input) != string::npos) {
            matches.push_back(part);
          }
        }
      }
    }
  }
  file.close();
}

int main(int argc, char *argv[]) {
	string versionCode = "polaris";
	string mkDir = "mkdir -p /opt/cache/pkg_debian";
	ifstream fin( "/opt/cache/pkg_debian/" );

	string command = "cd /opt/cache/";
	// int percentage = 0;
	ifstream ifs;
	ifs.open("/etc/lingmoPkg.d/lingmoPkg.list.src", ios::in);
	if (!ifs.is_open())
	{
		cout << "Faild!" << endl;
		return 0;
	}
	char buf[1024] = { 0 };
	while (ifs>>buf)
	{}
	string baselist = buf;
  string list = baselist + "/";
  if(strcmp(argv[1], "-i") == 0) {
		if(argc == 3) {
			string filename = argv[2];
      string sc = "/" + filename + "_";
      vector<string> matches;
			getMatchingNames(sc, matches);
      for(string name : matches) {
        if(!fin) {
				  system(mkDir.c_str());
			  } else {
		if(fin) {
          string Savedir = "/opt/cache/pkg_debian/" + filename + ".deb";
          string cmod = "lingmoGet " + list + name + ".deb -O " + Savedir;
          
          cout << "\033[44m\033[1mRead:\033[0m [" + name + "]" << endl; 
          cout << "\033[44m\033[1mGet:\033[0m [" + list + name + ".deb" + "]" << endl;

          system(cmod.c_str());
		} else {
			printf("Error!");
		}
        }
		}
      }
			// getchar();
			// return 0;
		}
	}

int get_id(char *rpi_id, int size)
{
	int fd = -1;
	char buf[16];
	char *ptr;
	char *id_start;
	char *id_end;

	fd = open(PATH, O_RDONLY);
 
	memset(buf, 0, sizeof(buf));
	read(fd, buf, sizeof(buf));
 
	ptr = strstr(buf, "[pkg]");
	ptr += strlen("[pkg]");
	id_start = ptr;
	while( (*ptr) != '\n' )
		ptr++;
	id_end = ptr;
 
	memset(rpi_id, 0, size);
	memcpy(rpi_id, ptr, size);
 
    close(fd);
    return 0;
}
