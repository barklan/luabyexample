---
title: "Standard input/output"
date: "2023-07-01"
weight: 241
next: true
---

## Input

`io.read()` can be used for standard input:

```lua
s = io.read()              -- read a line
s = io.read("*l")          -- read a line (default when no parameter is given)
s = io.read("*n")          -- read a number
s = io.read("*a")          -- read the complete stdin
s = io.read(7)             -- read 7 characters from stdin
x,y = io.read(7,12)        -- read 7 and 12 characters from stdin and assign them to x and y
a,b = io.read("*n","*n")   -- read two numbers and assign them to a and b
```

## Output

`io.write()` or `io.stdout:write()` can be used for standard output:

```lua
io.write("boo!")
```

## Standard error

`io.stderr:write()` can be used to write to standard error.
