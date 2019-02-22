XMFLoat4 = {x,y,z,w}; -- members
XMFLoat4.mt = {}; -- metamethods
function  XMFLoat4.new( initList ) -- construct
	local outList = {};
	setmetatable(outList,XMFLoat4.mt);
	outList.x = initList[1];
	outList.y = initList[2];
	outList.z = initList[3];
	outList.w = initList[4];
	return outList;
end

function XMFLoat4.add( ls, rs )
	local outList = {};
	setmetatable(outList,XMFLoat4.mt);
	outList.x = ls.x + rs.x;
	outList.y = ls.y + rs.y;
	outList.z = ls.z + rs.z;
	outList.w = ls.w + rs.w;
	return outList;
end

function XMFLoat4.sub( ls, rs )
	local outList = {};
	setmetatable(outList,XMFLoat4.mt);
	outList.x = ls.x - rs.x;
	outList.y = ls.y - rs.y;
	outList.z = ls.z - rs.z;
	outList.w = ls.w - rs.w;
	return outList;
end

function XMFLoat4.mul( ls, rs )
	return nil;
end

function XMFLoat4.div( ls, rs )
	return nil
end

function XMFLoat4.unm(rs)
	local outList = {};
	setmetatable(outList,XMFLoat4.mt);
	outList.x = ~rs.x;
	outList.y = ~rs.y;
	outList.z = ~rs.z;
	outList.w = ~rs.w;
	return outList;
end

function XMFLoat4.tostring( rs )
	return "{"..(rs.x or 0).." ,"..(rs.y or 0).." ,"..(rs.z or 0).." ,"..(rs.w or 0).."}";
end

XMFLoat4.mt.__add = XMFLoat4.add;
XMFLoat4.mt.__sub = XMFLoat4.sub;
XMFLoat4.mt.__mul = XMFLoat4.mul;
XMFLoat4.mt.__div = XMFLoat4.div;
XMFLoat4.mt.__tostring = XMFLoat4.tostring;
a = XMFLoat4.new({1,2,3,4});
b = XMFLoat4.new({5,6,7,8});
c = a + b;
d = a - b;
print(c);
print(d);
