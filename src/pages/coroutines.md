A new coroutine is created by using the `coroutine.create` function with a single argument: a function to be executed. Returns new coroutine, an object with type `thread`.

```lua
co = coroutine.create(
    function()
        print("honk")
    end
)

print(co)
print(coroutine.status(co))
```
```
thread: 0x5629ba941d58
suspended
```

A coroutine can be in one of three different states: **suspended**, **running**, and **dead**. When we create a coroutine, it starts in the suspended state.


```lua
coroutine.resume(co)
```
```
honk
```

```lua
print(coroutine.status(co))
```
```
dead
```



<div class="border-2 rounded-md p-2 border-dashed border-gray-500">
Unlike "real" multithreading, coroutines are non preemptive. While a coroutine is running, it cannot be stopped from the outside. It only suspends execution when it explicitly requests so (through a call to `yield`).
</div>

<route lang="yaml">
meta:
  title: Coroutines
</route>
