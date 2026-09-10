# Official plugin: cache

In-memory query result cache. Thin wrapper around `jade.cache` so it can be loaded as a plugin.

## Install (from core)

```lua
Jade.use(require("jade.plugin.cache"), { ttl = 600, max_size = 2000 })
```

Or via this repo path after vendoring:

```lua
Jade.use(dofile("plugins/official/cache/init.lua"), { ttl = 600 })
```

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `ttl` | 300 | Seconds |
| `max_size` | 1000 | Max entries |
| `driver` | `memory` | Only memory today |
