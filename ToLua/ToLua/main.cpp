#include "main.h"

int main()
{
	TCHAR szFilePath[MAX_PATH + 1] = { 0 };
	GetModuleFileName(NULL, szFilePath, MAX_PATH);
	std::string path(szFilePath);
	size_t index = path.length() - 1;
	for (; index >= 0; index--)
	{
		if (path[index] == '\\')
		{
			break;
		}
	}
	path = path.substr(0, index);
	std::string sys("cd /d ");
	sys += path;
	std::cout << path;
}