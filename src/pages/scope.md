
Variables have different scopes. Once the end of the scope is reached the values in that scope are no longer accessable

```lua
function foo()
  local a = 10
end

print(a)
--nil
```

Global variables do not need declarations. You simply assign a value to a global variable to create it.

```lua
b = 10
print(b)
--10
```

<route lang="yaml">
meta:
  title: Variable Scope
</route>
