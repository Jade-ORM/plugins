# Jade Plugins

Official and community plugins for [Jade ORM](https://github.com/Jade-ORM/jade-orm-core).

Plugins are the **user customization surface** for Jade — not a dumping ground for core features. See [ALINHAMENTO §6](https://github.com/Jade-ORM/jade-orm-core) philosophy in the core docs.

## Layout

```
plugins/
├── README.md
├── registry.json              # index for docs + esmeralda add (future)
├── docs/
│   └── CONTRACT.md            # jade-plugin.json + setup/teardown contract
└── official/
    ├── cache/                 # example: thin wrapper over jade.cache
    └── soft-delete/           # example: soft delete via hooks
```

Community plugins live in their **own GitHub repos** and are listed in `registry.json` after review.

## Using a plugin

```lua
local Jade = require("jade")

Jade.use(require("jade.plugin.cache"), { ttl = 600 })

-- or via config
Jade.configure({
    database = { ... },
    plugins = {
        { name = "cache", ttl = 600 },
    }
})
```

## Publishing a community plugin

1. Create a public GitHub repo with a Lua module that implements the contract (`name`, `version`, `setup`).
2. Add a `jade-plugin.json` at the repo root.
3. Open a PR here updating `registry.json` (name, repo, description, compat).
4. After review it appears on Jade Docs → Plugins.

## Official plugins

| Plugin | Description |
|--------|-------------|
| `cache` | In-memory query cache (wraps `jade.cache`) |
| `soft-delete` | Soft delete via entity hooks |

More official plugins ship as the ecosystem needs them — prefer plugins over bloating core.
