---
title: "User input"
weight: 241
next: true
---

`io.read()` can be used for user input:

```lua
 s = io.read("*n")          -- read a number
 s = io.read("*l")          -- read a line (default when no parameter is given)
 s = io.read("*a")          -- read the complete stdin
 s = io.read(7)             -- read 7 characters from stdin
 x,y = io.read(7,12)        -- read 7 and 12 characters from stdin and assign them to x and y
 a,b = io.read("*n","*n")   -- read two numbers and assign them to a and b
```
