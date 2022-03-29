---
title: "LuaRocks (package manager)"
weight: 26
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# LuaRocks (package manager)

[LuaRocks](https://luarocks.org/) is the package manager for Lua modules. On most distributions it is available as `luarocks`. For lots of cool Lua packages see [awesome-lua](https://github.com/JaredSartin/awesome-lua).

Search for a library

```
$ luarocks search luasec
```

Install a library

```
$ luarocks install --local luasec
```

You can install Lua libraries locally or on a systemwide basis. A local install indicates that the Lua library you install is available to you, but no other user of the computer. If you're developing a Lua application, then you probably want to install a library to a project directory instead. In Luarocks terminology, this is a tree. Your default tree when installing libraries locally is `$HOME/.luarocks`, but you can redefine it arbitrarily.

```
$ mkdir local
$ luarocks --tree=./local install cmark
```

You can use the library in your Lua code by defining the package.path variable to point to your local rocks directory

```lua
package.path = package.path .. ';local/share/lua/5.3/?.lua'

require("cmark")
```

If a library you've installed is compiled, resulting in a .so file (a .dll on Windows and .dylib on macOS), then you must add to your cpath instead. For instance, the luafilesystem library provides the file lfs.so:

```lua
package.cpath = package.cpath .. ';local/share/lua/5.3/?.so'

require("lfs")
```

Show information about an installed rock

```
$ luarocks show luasec
```

Get a list of installed rocks

```
$ luarocks list
```

Remove a rock

```
$ luarocks remove --local cmark
```
