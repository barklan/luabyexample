It complements other languages very well. Lua is a language as dynamic as Python, but LuaJIT compiles it to very fast machine code, sometimes faster than many statically compiled languages for computational code. The language runtime is very small and carefully designed for embedding.

### Go

```go
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

```bash
$ go run main.go
Hi!
```

### Python

```python
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


<route lang="yaml">
meta:
  title: Embedding in other languages
</route>
