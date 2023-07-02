---
title: "Variable Scope"
date: "2023-07-01"
weight: 100
next: true
---

## Local

Variables have different scopes. Once the end of the scope is reached the values in that scope are no longer accessible

```lua
function foo()
  local a = 10
end

print(a)
```

``` {.fs95 .output}
nil
```

## Global

Global variables do not need declarations. You simply assign a value to a global variable to create it.

```lua
b = 10
print(b)
```

``` {.fs95 .output}
10
```

Any reference to a global name `var` is syntactically translated to `_ENV.var`.
You can use `_ENV` tables to adjust your current chunk's environment

```lua
local function clone (t)
    local o = {}
    for k, v in pairs(t) do o[k] = v end
    return o
end

local function alter_inside (key)
    local _ENV = clone(_ENV)
    a = 5
    b = 6
    c = 7
    _ENV[key] = 11
    print(a, b, c)
end

alter_inside('a')
alter_inside('b')
alter_inside('c')
```

``` {.fs95 .output}
11      6       7
5       11      7
5       6       11
```
