---
title: "Pattern Matching"
weight: 15
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Pattern Matching

The `string.gmatch` function will take an input string and a pattern.
This pattern describes on what to actually get back.
This function will return a function which is actually an iterator.

```lua
for char in ("abc"):gmatch "." do
    print(char)
end

for match in ("#afdde6"):gmatch "%x%x" do
    print("#" .. match)
end
```

```
a
b
c
#af
#dd
#e6
```

Only the captures instead the full match:

```lua
local s = "from=world, to=Lua"
for k, v in string.gmatch(s, "(%w+)=(%w+)") do
    print("key: " .. k .. ", value: " .. v)
end
```

```
key: from, value: world
key: to, value: Lua
```

{{< button relref="docs/math"  >}}Next: Math{{< /button >}}
