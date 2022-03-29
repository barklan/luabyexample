---
title: "Key Tables"
weight: 9
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Key Tables

```lua
local teams = {
    ["teamA"] = 12,
    ["teamB"] = 15
}

print(teams["teamA"])

for key,value in pairs(teams) do
    print(key .. ":" .. value)
end
```

```
12
teamA:12
teamB:15
```

Insert

```lua
teams["teamC"] = 1
```

Delete

```lua
teams["teamA"] = nil
```

{{< button relref="docs/tables/metatables"  >}}Next: Meta Tables{{< /button >}}
