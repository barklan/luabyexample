---
title: "Environment Variables"
weight: 24
---

# Environment Variables

[Environment variables](http://en.wikipedia.org/wiki/Environment_variable) are a universal mechanism for [conveying configuration
information to Unix programs](http://www.12factor.net/config).

```lua
local secret = os.getenv("SECRET")
assert(secret ~= nil, "SECRET not set")
print(secret)
```

```txt {.output}
$ SECRET=12345 lua envtest.lua
12345
```

{{< button relref="docs/execute" >}}Next: Spawning Processes{{< /button >}}
