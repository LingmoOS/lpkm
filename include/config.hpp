#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

class BaseInfo
{

public:
    BaseInfo();
    ~BaseInfo();
    string versionCode = "polaris";
    string version = "2.0.0";
};

void BaseInfo::infoDir()
{
    string basedir = "/etc/lingmoPkg.d/";
    string sourcesL = "lingmoPkg.list.src";
}
