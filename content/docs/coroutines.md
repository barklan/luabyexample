---
title: "Coroutines"
weight: 22
next: true
---

A new coroutine is created by using the `coroutine.create` function
with a single argument: a function to be executed.
Returns new coroutine, an object with type `thread`.

```lua
co = coroutine.create(
    function()
        print("honk")
    end
)

print(co)
print(coroutine.status(co))
```

```txt {.fs90 .output}
―――――
thread: 0x5629ba941d58
suspended
```

A coroutine can be in one of three different states: **suspended**, **running**, and **dead**.
When we create a coroutine, it starts in the suspended state.

```lua
coroutine.resume(co)
```

```txt {.fs90 .output}
―――――
honk
```

<br>

```lua
print(coroutine.status(co))
```

```txt {.fs90 .output}
―――――
dead
```

Unlike "real" multithreading, coroutines are non preemptive.
While a coroutine is running, it cannot be stopped from the outside.
It only suspends execution when it explicitly requests so (through a call to `yield`).
