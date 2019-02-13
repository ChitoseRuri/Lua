#pragma once
//connect to lua
#include <iostream>
#include <lua.hpp>
#include <lua.h>
#if defined(DEBUG) | defined(_DEBUG)
#pragma comment(lib,"../../lua-5.3.5/lib/lua_5.3.5_D.lib")
#else
#pragma comment(lib,"../../lua-5.3.5/lib/lua_5.3.5_R.lib")
#endif
