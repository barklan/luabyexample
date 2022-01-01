Minimal docker image (~10MB):

<div class="grid grid-cols-2 gap-2 lt-sm:grid-cols-1">

```dockerfile
# Dockerfile
FROM alpine:3.15.0

RUN apk update \
    && apk add --no-cache lua5.4

WORKDIR /workdir

ENTRYPOINT [ "lua5.4" ]
```

```lua
-- hello.lua
print("Hello, World!")
```

</div>

```bash
docker build -t lua .
docker run \
-v "$(pwd)":/workdir \
lua hello.lua
```

<route lang="yaml">
meta:
  title: Docker
</route>
