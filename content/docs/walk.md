---
title: "Walk a Directory"
weight: 20
next: true
---

We can use lfs ([LuaFileSystem](https://github.com/keplerproject/luafilesystem))
module to make a walk function. To install lfs use [luarocks](/luarocks):

```bash
mkdir .cache
luarocks --tree=./.cache install luafilesystem
```

`walk` function takes two arguments:

- the directory to walk recursively;
- an optional function that takes a file name as argument, and returns a boolean.

```lua
package.cpath = package.cpath .. ';./.cache/lib/lua/5.4/?.so'
local lfs = require("lfs")

local function walk(self, fn)
  return coroutine.wrap(function()
    for f in lfs.dir(self) do
      if f ~= "." and f ~= ".." then
        local _f = self .. "/" .. f
        if not fn or fn(_f) then
          coroutine.yield(_f)
        end
        if lfs.attributes(_f, "mode") == "directory" then
          for n in walk(_f, fn) do
            coroutine.yield(n)
          end
        end
      end
    end
  end)
end

-- List all files and directories
for f in walk("src/styles") do
  print(f)
end
```

```txt {.fs90 .output}
src/styles/main.css
src/styles/markdown.css
```
