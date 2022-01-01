```lua
local colors = { "red", "green", "blue" }

print(colors[1])
print(colors[2])
print(colors[3])

io.write("Number of Items : ", #colors, "\n")
```
```
red
green
blue
Number of Items : 3
```


Note that numeration **starts with 1** - not 0 like in most languages. To iterate though table:

```lua
for i=1, #colors do
  print(colors[i])
end
```
```
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
```
1:red
2:green
3:blue
```

<br>Append to the end of the table

```lua
local colors = { "red", "green", "blue" }

table.insert(colors, "orange")
local index = #colors --4 (this is the last index in the table)
print(colors[index])
```
```
orange
```

<br>Insert at index

```lua
local colors = { "red", "green", "blue" }
table.insert(colors, 2, "pink")
for i=1, #colors do
  print(colors[i])
end
```
```
red
pink
green
blue
```

<br>Remove

```lua
local colors = { "red", "green", "blue" }
table.remove(colors, 1)
for i=1, #colors do
  print(colors[i])
end
```
```
green
blue
```

<route lang="yaml">
meta:
  title: Tables
</route>
