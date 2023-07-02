---
title: "File IO"
date: "2023-07-01"
weight: 170
next: true
---

```lua
-- Create new file for reading and writing
file = io.open("test.lua", "w+")

-- Write text to the file
file:write("Random string of text\n")
file:write("Some more text\n")

-- Move back to the beginning of the file
file:seek("set", 0)

-- Read from the file
print(file:read("*a"))

-- Close the file
file:close()

-- Open file for appending and reading
file = io.open("test.lua", "a+")
file:write("Even more text\n")
file:seek("set", 0)
print(file:read("*a"))
file:close()
```

```txt {.fs90}
Random string of text
Some more text

Random string of text
Some more text
Even more text
```

There are several different ways to work with files:

```txt {.output}
r: Read only (default)
w: Overwrite or create a new file
a: Append or create a new file
r+: Read & write existing file
w+: Overwrite read or create a file
a+: Append read or create file
```
