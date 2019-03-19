readonly = {};
function  readonly.__newindex( table, key, value )
	error("This is readonly~!");
end


XMFloat4 = {}; 
XMFloat4.prototype = {x = 0,y = 0,z = 0,w = 0}; -- members with default value
XMFloat4.mt = {}; -- metatable
function  XMFloat4.new( initList ) -- construct
	local outList = {};
	setmetatable(outList, XMFloat4.mt);
	outList.x = initList[1];
	outList.y = initList[2];
	outList.z = initList[3];
	outList.w = initList[4];
	return outList;
end

function XMFloat4.mt.__index( table, key )
	return XMFloat4.prototype[key];
end

function XMFloat4.add( ls, rs )
	local outList = {};
	setmetatable(outList, XMFloat4.mt);
	outList.x = ls.x + rs.x;
	outList.y = ls.y + rs.y;
	outList.z = ls.z + rs.z;
	outList.w = ls.w + rs.w;
	return outList;
end

function XMFloat4.sub( ls, rs )
	local outList = {};
	setmetatable(outList,XMFloat4.mt);
	outList.x = ls.x - rs.x;
	outList.y = ls.y - rs.y;
	outList.z = ls.z - rs.z;
	outList.w = ls.w - rs.w;
	return outList;
end

function XMFloat4.mul( ls, rs )
	return nil;
end

function XMFloat4.div( ls, rs )
	return nil
end

function XMFloat4.unm(rs)
	local outList = {};
	setmetatable(outList,XMFloat4.mt);
	outList.x = ~rs.x;
	outList.y = ~rs.y;
	outList.z = ~rs.z;
	outList.w = ~rs.w;
	return outList;
end

function XMFloat4.tostring( rs )
	return "{"..(rs.x or 0).." ,"..(rs.y or 0).." ,"..(rs.z or 0).." ,"..(rs.w or 0).."}";
end

XMFloat4.mt.__add = XMFloat4.add;
XMFloat4.mt.__sub = XMFloat4.sub;
XMFloat4.mt.__mul = XMFloat4.mul;
XMFloat4.mt.__div = XMFloat4.div;
XMFloat4.mt.__tostring = XMFloat4.tostring;
XMFloat4.mt.__metatable = "Need not to do.";

setmetatable(XMFloat4, readonly);


