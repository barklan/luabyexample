---
title: "While/For"
weight: 6
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

### While

```lua
i = 1
while (i <= 10) do
  io.write(i)
  i = i + 1

  -- break throws you out of a loop
  -- continue doesn't exist in Lua
  if i == 8 then break end
end
```
```
1234567
```

### Repeat until

```lua
repeat
  io.write("Enter your guess : ")

  -- Gets input from the user
  guess = io.read()

  -- Either surround the number with quotes, or convert the string into
  -- a number
until tonumber(guess) == 15
```

### For

```lua
-- start, stop, increment each loop
for i = 1, 10, 1 do
  io.write(i)
end
```
```
12345678910
```
