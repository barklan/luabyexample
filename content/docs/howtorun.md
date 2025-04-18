---
title: "How to run it"
date: "2023-07-01"
toc: true
next: true
weight: 20
---

## 1. Online

You can try lua [interactively](https://www.lua.org/demo.html).

## 4. System package

Before you should know that there is also [LuaJIT project](https://luajit.org/) - a Just-In-Time Compiler for Lua.
It can be used as a drop-in replacement for Lua.

{{< tabs >}}
{{< tab "MacOS" >}}

On MacOS Lua can be installed with Homebrew:

```bash
brew update
brew install lua
```

Alternatively LuaJIT:

```bash
brew install luajit
```

{{< /tab >}}
{{< tab "Linux" >}}

On most Linux distributions Lua is available as `lua` and LuaJIT as `luajit` packages.
On non-rolling distributions like Ubuntu it is preferable to
install specific latest version, e.g. `lua5.4`.

*Debian based:*

```bash
sudo apt update && sudo apt install lua5.4 luajit
```

*Arch Linux:*

```bash
sudo pacman -Syu lua luajit
```

*Fedora:*

```bash
sudo dnf install lua
```

{{< /tab >}}
{{< tab "Windows" >}}

On Windows it can be installed either with
[luaforwindows project](https://github.com/rjpcomputing/luaforwindows/releases) or
[luarocks all-in-one](https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Windows)
package.

{{< /tab >}}
{{< /tabs >}}

## 2. Docker

Minimal docker image (~10MB):

`Dockerfile`

```dockerfile {linenos=inline}
FROM alpine:3.15.0

RUN apk update \
    && apk add --no-cache lua5.4

WORKDIR /workdir

ENTRYPOINT [ "lua5.4" ]
```

`hello.lua`

```lua
print("Hello, World!")
```

Build and run:

```bash
docker build -t lua .
docker run -v "$(pwd)":/workdir lua hello.lua
```

## 3. From source

Visit [lua.org](https://www.lua.org/download.html) for detailed instructions to build Lua from source.

