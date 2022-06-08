---
title: "Random Numbers"
weight: 17
next: true
---

```lua
-- Used to set a seed value for random.
math.randomseed(os.time())

--random value between 0 tand 1
print(math.random())

--random integer value from 1 to 100 (both inclusive)
print(math.random(100))

--random integer value from 20 to 100 (both inclusive)
print(math.random(20, 100))
```

```txt {.fs90 .output}
―――――
0.0012512588885159
20
54
```

`os.time()` has resolution down to seconds which means that if you invoke
the command multiple times within a given second you'll get the same values back.
You can try using more entropic sources for seeding like `/dev/random`.
