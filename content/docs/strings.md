---
title: "Strings"
date: "2023-07-01"
weight: 50
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

```console {.output}
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

```console {.output}
I am a very very long
string that goes on for
ever
```

String formatting

```lua
print(string.format("not true = %s", tostring(not true)))
```

```console {.output}
not true = false
```
