---
title: "Variables"
weight: 2
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

```lua
local x = 10             --number
local x = 10.1           --number
local name = "John Doe"  --string
local isAlive = true     --boolean
local a = nil            --no value or invalid value
```

It is not an error to access a non-initialized variable; you just get the special value nil as the result:

```lua
print(b)
--nil
```
