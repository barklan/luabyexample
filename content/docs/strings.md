---
title: "Strings"
weight: 4
next: true
---

```lua
local greeting = "Hello, "
local name = "Kenneth Sparks"
print(greeting .. name)

local age = 19
local name = "Laurence"
print(name .. " is " .. age .. " years old")

hi = "Hi!"
io.write(string.len(hi), "\n")
```

```txt {.fs90 .no-border}
Hello, Kenneth Sparks
Laurence is 19 years old
3
```

We can create long strings and maintain white space

```lua
local longString = [[
I am a very very long
string that goes on for
ever]]
io.write(longString, "\n")
```

```txt {.fs90 .no-border}
I am a very very long
string that goes on for
ever
```

String formatting

```lua
print(string.format("not true = %s", tostring(not true)))
```

```txt {.fs90 .no-border}
not true = false
```
