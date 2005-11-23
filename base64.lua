-- base64.lua
-- support code for base64 library
-- usage lua -lbase64 ...

local function so(x)
	local SOPATH= os.getenv"LUA_SOPATH" or "./"
	assert(loadlib(SOPATH.."l"..x..".so","luaopen_"..x))()
end

so"base64"
