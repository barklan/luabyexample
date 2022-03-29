---
title: "Time"
weight: 18
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Time

## Manipulating time

Two functions, `time` and `date`, do all date and time queries in Lua.

```lua
local now = os.time()
print(now)

local timestamp = os.time({year=2021, month=9, day=15, hour=3, minute=4})
print(timestamp)

t = os.date('*t', timestamp)
print(t.year)
print(t.hour)
```

```
1641046800
1631664000
2021
3
```

## Formatting

```lua
print(os.date("today is %A, in %B"))
```

```
today is Saturday, in January
```

All formatting tags:

```
%a  abbreviated weekday name (e.g., Wed)
%A  full weekday name (e.g., Wednesday)
%b  abbreviated month name (e.g., Sep)
%B  full month name (e.g., September)
%c  date and time (e.g., 09/16/98 23:48:10)
%d  day of the month (16) [01-31]
%H  hour, using a 24-hour clock (23) [00-23]
%I  hour, using a 12-hour clock (11) [01-12]
%M  minute (48) [00-59]
%m  month (09) [01-12]
%p  either "am" or "pm" (pm)
%S  second (10) [00-61]
%w  weekday (3) [0-6 = Sunday-Saturday]
%x  date (e.g., 09/16/98)
%X  time (e.g., 23:48:10)
%Y  full year (1998)
%y  two-digit year (98) [00-99]
%%  the character `%´
```

## Sleeping

Lua doesn't provide a standard `sleep` function, but there are several ways to implement one.

Linux:

```lua
function sleep(n)
    os.execute("sleep " .. tonumber(n))
end
```

Windows:

```lua
function sleep(n)
    if n > 0 then
        os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
    end
end
```

With [LuaSocket](https://github.com/diegonehab/luasocket) module (`luarocks install luasocket`):

```lua
socket = require("socket")

socket.sleep(0.2)
```
