---
title: "Pattern Matching"
weight: 15
next: true
toc: true
---

Lua does not have regular expressions. Instead it has pattern matching.
The `string.gmatch` function will take an input string and a pattern.
This pattern describes on what to actually get back.
This function will return a function which is actually an iterator.

## Simple matching

```lua
for char in ("abc"):gmatch "." do
    print(char)
end

for match in ("#afdde6"):gmatch "%x%x" do
    print("#" .. match)
end
```

```txt {.fs90 .output}
a
b
c
#af
#dd
#e6
```

## Capture groups

```lua
local s = "from=world, to=Lua"
for k, v in string.gmatch(s, "(%w+)=(%w+)") do
    print("key: " .. k .. ", value: " .. v)
end
```

```txt {.fs90 .output}
key: from, value: world
key: to, value: Lua
```

## Character classes

| Character class | Matching section                        |
| --------------- | --------------------------------------- |
| %a              | letters (A-Z, a-z)                      |
| %c              | control characters (\n, \t, \r, ...)    |
| %d              | digits (0-9)                            |
| %l              | lower-case letter (a-z)                 |
| %p              | punctuation characters (!, ?, &, ...)   |
| %s              | space characters                        |
| %u              | upper-case letters                      |
| %w              | alphanumeric characters (A-Z, a-z, 0-9) |
| %x              | hexadecimal digits (\3, \4, ...)        |
| %z              | the character with representation 0     |
| .               | Matches any character                   |

Any upper-case version of those classes represents the complement of the class.
For instance, `%D` will match any non-digit character sequence.
