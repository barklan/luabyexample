# Lua by Example

Small site to keep Lua in one place.

## Run locally

```bash
hugo server --minify -D
```

All pages are in `content/docs`.

## Contributing

All `pre-commit` checks must pass before merge can be made. To install use it locally, install [`pre-commit`](https://pre-commit.com/) and run to enable git hooks:

```bash
pre-commit install
pre-commit install --hook-type commit-msg
```

Alternatively run on all files

```bash
pre-commit run --all-files
```

Please tag all markdown code blocks that contain lua with language code `lua`. For all other code blocks do not include language code at all.
