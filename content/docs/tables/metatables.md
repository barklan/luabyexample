---
title: "Meta Tables"
weight: 10
---

# Meta Tables

Used to define how operations on tables should be carried out in regards to
adding, subtracting, multiplying, dividing, concatenating, or comparing tables.

```lua
-- Create a table and put default values in it
aTable = {}
for x = 1, 5 do
    aTable[x] = x
end

mt = {
    -- Define how table values should be added
    -- You can also define _sub, _mul, _div, _mod, _concat (..)
    __add = function (table1, table2)
        sumTable = {}

        for y = 1, #table1 do
            if (table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] + table2[y]
            else
                sumTable[y] = 0
            end
        end

        return sumTable
    end,

    -- Define how table values should be checked for equality
    __eq = function (table1, table2)
        return table1.value == table2.value
    end,
}

-- Attach the metamethods to this table
setmetatable(aTable, mt)

-- Check if tables are equal
print(aTable == aTable)

addTable = {}

-- Add values in tables
addTable = aTable + aTable

-- print the results of the addition
for z = 1, #addTable do
  print(addTable[z])
end
```

```txt {.output}
true
2
4
6
8
10
```

{{< button relref="docs/tables/tablesort"  >}}Next: Sorting Tables{{< /button >}}
