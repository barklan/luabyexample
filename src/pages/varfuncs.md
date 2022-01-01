Variadic Function recieve unknown number of parameters

```lua
function getSum(...)
    local sum = 0

    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end

io.write("Sum : ", getSum(1,2,3,4,5,6), "\n")
```
```
Sum : 21
```

<route lang="yaml">
meta:
  title: Variadic Functions
</route>
