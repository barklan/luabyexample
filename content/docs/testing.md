---
title: "Testing"
weight: 27
next: true
toc: true
---

## busted

[busted](https://github.com/Olivine-Labs/busted) is a unit testing framework with a focus on being easy to use

```bash
luarocks install busted
```

Create `sample_test.lua`:

```lua
describe('Busted unit testing framework', function()
  describe('should be awesome', function()
    it('should be easy to use', function()
      assert.truthy('Yup.')
    end)

    it('should have lots of features', function()
      -- deep check comparisons!
      assert.same({ table = 'great'}, { table = 'great' })

      -- or check by reference!
      assert.is_not.equals({ table = 'great'}, { table = 'great'})

      assert.falsy(nil)
      assert.error(function() error('Wat') end)
    end)

    it('should provide some shortcuts to common functions', function()
      assert.unique({{ thing = 1 }, { thing = 2 }, { thing = 3 }})
    end)

    it('should have mocks and spies for functional tests', function()
      local thing = require('thing_module')
      spy.spy_on(thing, 'greet')
      thing.greet('Hi!')

      assert.spy(thing.greet).was.called()
      assert.spy(thing.greet).was.called_with('Hi!')
    end)
  end)
end)
```

Run all tests:

```bash
busted -p _test tests
```

## LuaUnit

[LuaUnit](https://github.com/bluebird75/luaunit) is a simpler unit-testing framework for Lua.

```bash
luarocks install luaunit
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
―――――
$ lua hello_test.lua
1..1
# Started on Sat Apr 23 10:23:20 2022
# Starting class: TestCalculator
ok     1    TestCalculator.testPlus
# Ran 1 tests in 0.001 seconds, 1 success, 0 failures
```

## Code coverage

[LuaCov](https://github.com/keplerproject/luacov) can be used to analyze code coverage.

```bash
luarocks install luacov
```

Run All Tests and check code coverage with busted:

```bash
busted -c -p _test tests
luacov luacov.stats.out
cat luacov.report.out
```

Run test and check code coverage with LuaUnit:

```bash
lua -lluacov hello_test.lua
```
