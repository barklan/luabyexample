A Module is like a library full of functions and variables.

<div class="grid grid-cols-2 gap-2 lt-sm:grid-cols-1">

```lua
-- main.lua
local info = require "info"

info.valueOf("John")
```

```lua
-- info.lua
local m = {}

function m.valueOf(x)
    io.write("Value: ", x)
end

return m
```

</div>

```bash
$ lua main.lua
Value: John
```

<route lang="yaml">
meta:
  title: Modules
</route>
