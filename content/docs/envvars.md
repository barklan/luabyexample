---
title: "Environment Variables"
date: "2023-07-01"
weight: 240
next: true
---

[Environment variables](http://en.wikipedia.org/wiki/Environment_variable) are a universal mechanism for [conveying configuration
information to Unix programs](http://www.12factor.net/config).

```lua
local secret = os.getenv("SECRET")
assert(secret ~= nil, "SECRET not set")
print(secret)
```

```txt {.fs90}
$ SECRET=12345 lua envtest.lua
12345
```
