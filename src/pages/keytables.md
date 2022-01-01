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

<route lang="yaml">
meta:
  title: Key Tables
</route>
