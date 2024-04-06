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

#include "../include/checklist.hpp"
#define PATH "/etc/lingmoPkg.d/lingmoPkg.list.src"

using namespace std;

int main(int argc, char *argv[])
{
    string mkDir = "mkdir -p lingmo.Pkg/";
	ifstream fin( "lingmo.Pkg" );
    string pkgType = ".lpk";
    string zipType = ".tar.xz";
    std::string pkg_name, pkg_version, pkg_dep, pkg_log, pkg_des;

    std::ifstream version_file("lingmo.Pkg/version");
    std::string line;

    getline(version_file, line);
    size_t pos = line.find("[Name]"); 
    pkg_name = line.substr(pos+6);

    getline(version_file, line);
    pos = line.find("[Version]");
    pkg_version = line.substr(pos+9);

    std::ifstream baseinfo_file("lingmo.Pkg/baseInfo");

    getline(baseinfo_file, line);
    pos = line.find("[dependency]");
    pkg_dep = line.substr(pos+12);

    getline(baseinfo_file, line);
    pos = line.find("[updatelog]"); 
    pkg_log = line.substr(pos+11);

    getline(baseinfo_file, line);
    pos = line.find("[describe]");
    pkg_des = line.substr(pos+10);

    string name = pkg_name;
    string version = pkg_version;
    string dep = pkg_dep;
    string log = pkg_log;
    string des = pkg_des;

    if(!fin) {
		system(mkDir.c_str());
	} else {
        // apt build-dep ./
        // debuild -us -uc -b
        string basecommd = "echo -e ";
        string command = "cd lingmo.Pkg && cmake -DCMAKE_INSTALL_PREFIX=pkg/ .. && make -j40 && make install";
        
        string witname = basecommd + "[Pkg]";
        string truname = witname + name + version  + ">> pkg/opt/cache/lingmoPkg/lpkm";
        
        string witversion = basecommd + "[Version]";
        string truversion = witversion + version + ">> pkg/opt/cache/lingmoPkg/lpkm";
        
        string witdep = basecommd + "[Dependency]" ;
        string trudep = witdep + dep + ">> pkg/opt/cache/lingmoPkg/lpkm";
        
        string witdes = basecommd + "[describe]";
        string trudes = witdes + des + ">> pkg/opt/cache/lingmoPkg/lpkm";
        string makPkg = "cd lingmo.Pkg/pkg && tar -zcf ../../" + pkg_name + "-" + pkg_version + pkgType + " *";
	    system(command.c_str());
        system(makPkg.c_str());
    }
}
