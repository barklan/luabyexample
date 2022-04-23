---
title: "Docker"
weight: 27
---

# Docker

Minimal docker image (~10MB):

{{< columns >}}
`Dockerfile`

```dockerfile
FROM alpine:3.15.0

RUN apk update \
    && apk add --no-cache lua5.4

WORKDIR /workdir

ENTRYPOINT [ "lua5.4" ]
```

<--->

`hello.lua`

```lua
print("Hello, World!")
```

{{< /columns >}}

Build and run:

```bash
docker build -t lua .
docker run -v "$(pwd)":/workdir lua hello.lua
```

{{< button relref="docs/embedding" >}}Next: Embedding{{< /button >}}
