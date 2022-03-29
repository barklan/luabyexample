---
title: "Hello World"
weight: 1
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

You can try lua [interactively](https://www.lua.org/cgi-bin/demo).

```lua
-- This is a comment.
print("Hello, World!")

--[[
    This is a
    multi-line comment.
]]
```

 TODO fix below

To run the code put it in `hello.lua` and use `lua hello.lua`.

<div class="border-2 rounded-md p-2 border-dashed border-gray-500">
<b>Install Lua:</b>
<ul>
<li>
On most <b>Linux</b> distributions Lua is available as <code>lua</code> package. On non-rolling distributions like Ubuntu it is preferable to install specific latest version, e.g. <code>lua5.3</code>. There is also <a href="https://luajit.org/">LuaJIT project</a> - a Just-In-Time Compiler for Lua. It can be used as a drop-in replacement for <code>lua</code>.
</li><li>
On <b>Windows</b> it can be installed either with <a href="https://github.com/rjpcomputing/luaforwindows/releases">luaforwindows project</a> or <a href="https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Windows">luarocks all-in-one package</a>.
</li><li>
On <b>MacOS</b> it can be installed with Homebrew:

<pre>
brew update
brew install lua
</pre>
</li>
</ul>

</div>
