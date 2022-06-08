---
title: "While/For"
weight: 6
next: true
toc: true
---

## While

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

```txt {.fs90 .output}
―――――
1234567
```

## Repeat until

```lua
repeat
  io.write("Enter your guess : ")

  -- Gets input from the user
  guess = io.read()

  -- Either surround the number with quotes, or convert the string into
  -- a number
until tonumber(guess) == 15
```

## For

```lua
-- start, stop, increment each loop
for i = 1, 10, 1 do
  io.write(i)
end
```

```txt {.fs90 .output}
―――――
12345678910
```
