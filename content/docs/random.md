---
title: "Random Numbers"
weight: 17
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

```lua
-- Used to set a seed value for random.
math.randomseed(os.time())

--random value between 0 tand 1
print(math.random())
--0.0012512588885159

--random integer value from 1 to 100 (both inclusive)
print(math.random(100))
--20

--random integer value from 20 to 100 (both inclusive)
print(math.random(20, 100))
--54
```

<div class="border-2 rounded-md p-2 border-dashed border-gray-500">
<code>os.time()</code> has resolution down to seconds which means that if you invoke the command multiple times within a given second you'll get the same values back. You can try using more entropic sources for seeding like <code>/dev/random</code>.
</div>
