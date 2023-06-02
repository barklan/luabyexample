---
title: "If/Else"
weight: 60
next: true
---

```lua
local age = 10
if age < 18 then
    print("under 18")
end

age = 20
if age > 18 then
    print("over 18")
elseif age == 18 then
    print("is 18")
else
    print("under 18")
end
```

Comparison operators in Lua:

```txt
==, <, >, <=, >=, ~= (inequality)
```

Combining Statements

```lua
local isAlive = false
local age = 19
if isAlive and age > 18 then
    print("good")
elseif not isAlive or age < 18 then
    print("either dead or under 18")
end
```
