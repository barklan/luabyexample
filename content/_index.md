---
title: "Lua"
weight: 1
---

### *Lua is a lightweight high-level dynamic programming language designed primarily for embedded use in applications.*

You can try lua [interactively](https://www.lua.org/cgi-bin/demo). To install Lua use instructions for your system.
There is also [LuaJIT project](https://luajit.org/) - a Just-In-Time Compiler for Lua.
It can be used as a drop-in replacement for Lua.

{{< tabs "uniqueid" >}}

{{< tab "MacOS" >}}
On MacOS Lua can be installed with Homebrew:

    brew update
    brew install lua
{{< /tab >}}

{{< tab "Linux" >}}
On most Linux distributions Lua is available as `lua` package.
On non-rolling distributions like Ubuntu it is preferable to
install specific latest version, e.g. `lua5.3`.

{{< /tab >}}

{{< tab "Windows" >}}
On Windows it can be installed either with
[luaforwindows project](https://github.com/rjpcomputing/luaforwindows/releases) or
[luarocks all-in-one](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Windows)
package.
{{< /tab >}}

{{< /tabs >}}

{{< hint info >}}
You can search this site by pressing `/` and using `Tab` key.
{{< /hint >}}

{{< button relref="docs/hello-world"  >}}Start With "Hello World" program!{{< /button >}}
