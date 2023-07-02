---
title: "Tables"
date: "2023-07-01"
weight: 71
next: true
---

## Basic manipulation

Tables are the only data structure available in Lua that helps us create different types like arrays and dictionaries.

```lua
local colors = { "red", "green", "blue" }

print(colors[1])
print(colors[2])
print(colors[3])

io.write("Number of Items : ", #colors, "\n")
```

``` {.fs95 .output}
red
green
blue
Number of Items : 3
```

## Range over table

Note that numeration **starts with 1** - not 0 like in most languages. To iterate though table:

```lua
for i=1, #colors do
  print(colors[i])
end
```

``` {.fs95 .output}
red
green
blue
```

```lua
local colors = { "red", "green", "blue" }

for k, v in pairs(colors) do
  io.write(k, ":", v, "\n")
end
```

``` {.fs95 .output}
1:red
2:green
3:blue
```

## Append to the end of the table

```lua
local colors = { "red", "green", "blue" }

table.insert(colors, "orange")
local index = #colors --4 (this is the last index in the table)
print(colors[index])
```

``` {.fs95 .output}
orange
```

## Insert at index

```lua
local colors = { "red", "green", "blue" }
table.insert(colors, 2, "pink")
for i=1, #colors do
  print(colors[i])
end
```

``` {.fs95 .output}
red
pink
green
blue
```

## Remove

```lua
local colors = { "red", "green", "blue" }
table.remove(colors, 1)
for i=1, #colors do
  print(colors[i])
end
```

``` {.fs95 .output}
green
blue
```
