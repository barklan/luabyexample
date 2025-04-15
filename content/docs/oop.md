---
title: "OOP"
date: "2023-07-01"
weight: 230
next: true
---

Lua is not an OOP language and it doesn't allow you to define classes but you can fake it using tables and metatables.

```lua
-- Meta class
Shape = {area = 0}

-- Base class method new
function Shape:new(o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side * side;
    return o
end

-- Base class method printArea
function Shape:printArea()
    io.write("The area is ", self.area, "\n")
end

-- Creating an object
local myshape = Shape:new(nil, 10)
myshape:printArea()
```

```console {.output}
The area is 100
```
