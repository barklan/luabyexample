---
title: Hello World
---

```lua
-- This is a comment.
print("Hello, World!")

--[[
    This is a
    multi-line comment.
]]
```

To run the code put it in `hello.lua` and use `lua hello.lua`.

<div class="border-2 rounded-md p-2">
On most distributions Lua is available as <code>lua</code> package. On non-rolling distributions it is preferable to install specific latest version, e.g. <code>lua3.4</code>. There is also <a href="https://luajit.org/">LuaJIT project</a> - a Just-In-Time Compiler for Lua. It can be used as a drop-in replacement for <code>lua</code>.
</div>

<route lang="yaml">
meta:
  title: Hello World
</route>
