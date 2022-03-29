---
title: "Embedding"
weight: 28
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Embedding

Lua complements other languages very well. It is a language as dynamic as Python,
but LuaJIT compiles it to very fast machine code, sometimes faster than many statically
compiled languages for computational code.
The language runtime is very small and carefully designed for embedding
(some libraries provide complete Lua VM implementations).

## Go

You can use either [yuin/gopher-lua](https://github.com/yuin/gopher-lua) or [Shopify/go-lua](https://github.com/Shopify/go-lua).

```
// main.go
package main

import "github.com/Shopify/go-lua"

func main() {
    l := lua.NewState()
    lua.OpenLibraries(l)
    if err := lua.DoString(l, `print("Hi!")`); err != nil {
        panic(err)
    }
}
```

```
$ go run main.go
Hi!
```

## Python

```
>>> import lupa
>>> from lupa import LuaRuntime
>>> lua = LuaRuntime(unpack_returned_tuples=True)

>>> lua.eval('1+1')
2

>>> lua_func = lua.eval('function(f, n) return f(n) end')

>>> def py_add1(n): return n+1
>>> lua_func(py_add1, 2)
3

>>> lua.eval('python.eval(" 2 ** 2 ")') == 4
True
>>> lua.eval('python.builtins.str(4)') == '4'
True
```

{{< button relref="docs/conflang" >}}Next: Lua for Configuration{{< /button >}}
