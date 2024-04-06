// libprocess-cpp3 libprocess-cpp-dev
#include <stdio.h>
#include <string.h>
#include <cstdlib>
#include <unistd.h>
#include <iostream>
#include <cstring>
#include <sys/wait.h>
#include <curl/curl.h>
#include <sys/types.h>
#include <fstream>
#include <fcntl.h>
#include <sys/stat.h>

// #include "include/checklist.hpp"
#include "include/checklist.hpp"
#define PATH "/etc/lingmoPkg.d/lingmoPkg.list.src"

using namespace std;

//下载文件数据接收函数
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
// Download => save
int get_id(char *rpi_id, int size);

int main(int argc, char *argv[]) {
	if(geteuid() != 0) {
    // not running as root/sudo
    	std::cerr << "This program requires sudo privileges to run" << std::endl;
    	return 1;
  	}
	string filename = "Packages.gz";
	string versionCode = "polaris";
	string mkDir = "mkdir -p /opt/cache";
	ifstream fin( "/opt/cache" );
	string tpr = "dists/";
	string Savedir = "/opt/cache/" + filename;
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
	string list1 = buf;
	string list2 = list1 + "/" + "dists/polaris/main/binary-amd64/";
	string pkglist = list2 + filename;

    if(argc < 2) { 
		// printf("Please specify an option\n"); 
		string command = "lpkm -h";
		system(command.c_str());
		return 1; 
	}
	
	if(strcmp(argv[1], "-C") == 0 || strcmp(argv[1], "--config") == 0) {
		if(argc == 3) {
			string filename = argv[2];
			string command = "GetrLmpkg -i " + filename;
			system(command.c_str());
			return 0;
		}
	}
	if(strcmp(argv[1], "-m") == 0 || strcmp(argv[1], "--makePkg") == 0) {
		if(argc == 3) {
			string filename = argv[2];
			if(filename == "build") {
				string buildPkg = "buildLmPkg ";
				system(buildPkg.c_str());
				return 0;
			} else {
				printf("\n\033[1m\033[6m\033[41m\033[37mError:\033[0m\033[31mUnknown option\033[0m\n");
				return 0;
			}
		}
	}
	if(strcmp(argv[1], "-D") == 0 || strcmp(argv[1], "--debinstall") == 0) {
		if(argc == 3) {
			string filename = argv[2];
			string command = "GetpKginf -i " + filename;
			system(command.c_str());
			return 0;
		}
	}
    if(strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0) 
	{ 
		printf("\n\033[44m\033[1mUsage: %s [option] [string]\033[0m\n", argv[0]); 
		printf("\033[44m\033[1mOptions:\033[0m\n"); 
		printf("	-m, --makePkg Build Lingmo Packages\n");
		printf("	-C, --configd Config Packages\n");
		printf("	-d, --download Download Packages\n"); 
		printf("	-D, --debinstall Install Deb Packages\n");
		// printf("	-g, --getGithub Get Github Sources\n");
		printf("	-h, --help Show Help\n");
		printf("	-i, --installPkg Install Local Lingmo Packages\n");
		printf("	-l, --listPkg List Lingmo Packages\n");
		printf("	-r, --removePkg Remove Lingmo Packages\n");
		printf("	-u, --updatecache|update Update Lingmo Packages Cache\n");
		printf("	-v, --version Show Version\n\n"); 
		return 0; 
	}
    if(strcmp(argv[1], "-v") == 0 || strcmp(argv[1], "--version") == 0)
	{
		printf("	Lingmo Packages Manager\n", argv[0]);
		printf("	Version: 0.5 beta\n");
		printf("	Author: Lingmo OS Team\n");
		printf("	License: GPL2.0\n");
		printf("	Copyright © 2024 Lingmo OS All rights reserved.\n");
		return 0;
	}
	if(strcmp(argv[1], "-u") == 0 || strcmp(argv[1], "--updatecache") == 0 || strcmp(argv[1], "update") == 0)
	{
			//versionCode
			//packages.lingmo.org/dists/polaris/Packages
			
			if(!fin) {
				system(mkDir.c_str());
			} else {
				cout << "Git:[" << pkglist + "] ..."<< endl;
				string comd = "lingmoGet " + pkglist + " -O " + Savedir;
				string unzip = "lingmoUnPkg -d " + Savedir;
				system(comd.c_str());
				system(unzip.c_str());
				cout << "Get \033[44m\033[1mData...\033[0m" << endl;
			
			return 0;
			}
	}

	// if(strcmp(argv[1], "-g") == 0 || strcmp(argv[1], "--getGithub") == 0) {
	// 	if(argc == 3) {
	// 		string filename = argv[2];
	// 		string url = "https://github.com/LingmoOS";
	// 		dl_curl_get_req(url, filename + ".git");
	// 	}
	// }
	
    if(strcmp(argv[1], "-d") == 0 || strcmp(argv[1], "--download") == 0) {
  		if(argc == 3) {
            string filename = argv[2];
	        string dl_get_url = "https://lingmo.org/";
			dl_curl_get_req(dl_get_url, filename + ".deb");
		
	        cout << "下载完成！" << endl;
	        getchar();
	        return 0;
        } else { 
		printf("Please specify a string after the verbose option\n"); 
		return 0; 
		} 
	} else { 
		printf("\n[\033[1m\033[6m\033[41m\033[37mError\033[0m]: \033[31mUnknown option!\033[0m\n");
		printf("\033[44m\033[1mSupported options:\033[0m\n");
		printf("	\033[37m-b, --buildPkg Build Lingmo Packages\n");
		printf("	-C, --configd Config Packages\n");
		printf("	-d, --download Download Packages\n"); 
		printf("	-D, --debinstall Install Deb Packages\n");
		printf("	-g, --getGithub Get Github Sources\n");
		printf("	-h, --help Show Help\n");
		printf("	-i, --installPkg Install Local Lingmo Packages\n");
		printf("	-l, --listPkg List Lingmo Packages\n");
		printf("	-r, --removePkg Remove Lingmo Packages\n");
		printf("	-u, --updatecache|update Update Lingmo Packages Cache\n");
		printf("	-v, --version Show Version\033[0m\n"); 
		printf("\033[44m\033[1mUsage: lpkm [option] [string]\033[0m\n\n");
		return 1; 
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
 
	ptr = strstr(buf, "[list]");
	ptr += strlen("[list]");
	id_start = ptr;
	while( (*ptr) != '\n' )
		ptr++;
	id_end = ptr;
 
	memset(rpi_id, 0, size);
	memcpy(rpi_id, ptr, size);
 
    close(fd);
    return 0;
}
