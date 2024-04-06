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

using namespace std;

int get_id(char *rpi_id, int size);

void getMatchingNames(string input, vector<string>& matches) {

  fstream file;
  file.open("/opt/cache/pkg/info.lpf");

  if(file.is_open()) {

    string line; 
    string target = "[Pkg]";

    while(getline(file, line)) {

      size_t pos = line.find(target);
      if(pos != string::npos) {

        string name = line.substr(pos + target.length());

        size_t underscore = name.find("_"); 
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

int main(int argc, char *argv[])
{
    string versionCode = "polaris";
	string mkDir = "mkdir -p /opt/cache/pkg_debian";
	ifstream fin( "/opt/cache/pkg_debian/" );

	string command = "cd /opt/cache/";
	// int percentage = 0;
    std::string soc_Name, soc_Pass, soc_Type;

    std::ifstream sources_file("/etc/lingmoPkg.d/lingmoPkg.list");
    std::string line;

    getline(sources_file, line);
    size_t lpos = line.find("[List]"); 
    soc_Name = line.substr(lpos+7);

    getline(sources_file, line);
    lpos = line.find("[Pass]");
    soc_Pass = line.substr(lpos+7);

    getline(sources_file, line);
    lpos = line.find("[Type]");
    soc_Type = line.substr(lpos+7);

    string Name = soc_Name;
    string Pass = soc_Pass;
    string Type = soc_Type;
    string Savedir = "/opt/cache/pkgs/";

	ifstream ifs;
	ifs.open("/etc/lingmoPkg.d/lingmoPkg.list", ios::in);
	if (!ifs.is_open())
	{
		cout << "Faild!" << endl;
		return 0;
	}
	char buf[1024] = { 0 };
	while (ifs>>buf)
	{}
	string baselist = buf;
    string list = Name + "/";

    if(strcmp(argv[1], "-i") == 0) {
        if(argc == 3) {
            // Maybe it's right.
            string ipt = argv[2];
            string lpkmt = "tar -zxf "; //use tools
            string uzd = " /";
            string commd = lpkmt + ipt;
            string startUnlpk = commd + uzd;
            // string uzp = "tar"
            string cmod = "lingmoGet " + ipt + ".lpk -O " + Savedir;
            /*
             * if user input "./FILENAEM", then running install local packages.
             * else running install remote packages.
             */
            if(ipt[0] == '.' && ipt[1] == '/') {
                system(startUnlpk.c_str());
            } else {
                // web Pkgs
                system(cmod.c_str());
            }
        }
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
 
	ptr = strstr(buf, "[Pkg]");
	ptr += strlen("[Pkg]");
	id_start = ptr;
	while( (*ptr) != '\n' )
		ptr++;
	id_end = ptr;
 
	memset(rpi_id, 0, size);
	memcpy(rpi_id, ptr, size);
 
    close(fd);
    return 0;
}
