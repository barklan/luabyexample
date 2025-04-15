---
title: "Lux (package manager)"
date: "2023-07-01"
weight: 270
next: true
---

[Lux](https://github.com/nvim-neorocks/lux) is a modern package manger for lua offering
many improvement over stagnant luarocks.

## Install

Can only be installed through `cargo` at the moment

```bash
cargo install lux-cli --locked
```

## Managing projects

```bash
lx new my-lua-project           # Initialize a project in a direcotry
lx add argparse@0.7             # Add dependency
```

Put some code in `src/main.lua`:

```txt {linenos=inline}
local argparse = require("argparse")

-- Create an argument parser
local parser = argparse("script", "An example.")
parser:argument("input", "Input file.")

local args = parser:parse()

-- Directly print out the "input" argument
print(args.input)
```

And run it:

```bash
lx run "Hi!"
```

```console {.output}
Hi!
```

## Goodies

You can enter lua REPL with project packages available with `lx lua`, lint project with `lx check` and format with `lx fmt`.
[More in the docs.](https://nvim-neorocks.github.io/)
