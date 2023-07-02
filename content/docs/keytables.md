---
title: "Key Tables"
date: "2023-07-01"
weight: 72
next: true
---

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

```txt {.fs90}
12
teamA:12
teamB:15
```

## Insert

```lua
teams["teamC"] = 1
```

## Delete

```lua
teams["teamA"] = nil
```
