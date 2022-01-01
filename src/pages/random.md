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

<route lang="yaml">
meta:
  title: Math
</route>
