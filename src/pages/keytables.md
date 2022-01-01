```lua
local teams = {
    ["teamA"] = 12,
    ["teamB"] = 15
}

print(teams["teamA"])
-- 12

for key,value in pairs(teams) do
    print(key .. ":" .. value)
end
```
```
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

<route lang="yaml">
meta:
  title: Key Tables
</route>
