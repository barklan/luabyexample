---
title: "Error handling"
date: "2023-07-01"
weight: 220
next: true
toc: true
---

## Try-catch style

`pcall` stands for "protected call". It is used to add error handling to functions.
`pcall` works similar as try-catch in other languages.

```lua
function square(a)
    return a * "a"
end

local status, retval = pcall(square, 10);
print("Status: ", status)
print("Return Value: ", retval)
```

```txt {.output}
Status:         false
Return Value:   temp.lua:2: attempt to mul a 'number' with a 'string'
```

## Opaque error handling

If we don't want a function to crash a program even in case of an error, it is standard in lua to do the following:

```lua
function foo(tab)
    if type(tab) ~= "table" then return nil, "Argument 1 is not a table!" end
    return tab.a
end -- This never crashes the program, but simply returns nil and an error message

if foo(20) then print(foo(20)) end -- prints nothing
result, error = foo(20)
if result then print(result) else print(error) end
```

```txt {.output}
Argument 1 is not a table!
```
