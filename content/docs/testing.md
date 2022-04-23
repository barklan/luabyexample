---
title: "Testing"
weight: 30
---

# Testing

[LuaUnit](https://github.com/bluebird75/luaunit) is a popular unit-testing framework for Lua.
It can be augmented with [LuaCov](https://github.com/keplerproject/luacov) to analyze coverage.

```bash
luarocks install luaunit
luarocks install luacov
```

Create `hello_test.lua`:

```lua
#!/usr/bin/env lua

-- Function under test
function plus( first, second )
    return first + second
end

-- Start test case
local lu = require('luaunit')

TestCalculator = {}
    function TestCalculator:testPlus()
        a = 1
        b = 2
        result = plus( a, b )
        lu.assertEquals( type(result), 'number' )
        lu.assertEquals( result, 3 )
    end

-- Start test runner with LuaUnit test
local runner = lu.LuaUnit.new()
runner:setOutputType("tap")
os.exit( runner:runSuite() )
```

```bash
lua -lluacov hello_test.lua
```

```txt {.output}
1..1
# Started on Sat Apr 23 10:23:20 2022
# Starting class: TestCalculator
ok     1    TestCalculator.testPlus
# Ran 1 tests in 0.001 seconds, 1 success, 0 failures
```
