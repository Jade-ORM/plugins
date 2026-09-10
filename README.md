# Jade Plugins

Official plugins for [Jade ORM](https://github.com/Jade-ORM/jade-orm-core).

Plugins are the **user customization surface** for Jade — not a dumping ground for core features.

## This repo is for **official** plugins only

| Who | Where |
|-----|--------|
| **Official** (Jade-ORM) | This repo — code + `registry.json` |
| **Community** (anyone) | **Your own GitHub repo** + register on **Jade Docs** (login) |

Community authors **do not** open a PR here. Create the plugin in your repo, then add it from the docs site after signing in.

## Layout

```
plugins/
├── README.md
├── registry.json              # official index only
├── docs/CONTRACT.md           # plugin interface + jade-plugin.json
└── official/
    ├── cache/
    ├── soft-delete/
    ├── timestamps/
    ├── tenant/
    └── sql-log/
```

## Using a plugin

```lua
local Jade = require("jade")

Jade.use(require("jade.plugin.cache"), { ttl = 600 })

Jade.configure({
    database = { ... },
    plugins = {
        { name = "cache", ttl = 600 },
        { name = "timestamps" },
    }
})
```

## Community plugins (self-publish)

1. Create a **public GitHub repo** with a Lua module implementing `name`, `version`, `setup`.
2. Put a **`jade-plugin.json`** at the repo root (see [CONTRACT.md](docs/CONTRACT.md)).
3. Open **Jade Docs → Plugins → Submit** (or **Add plugin**).
4. **Sign in with GitHub** and paste your repo URL.
5. Docs validates `jade-plugin.json` and lists the plugin under Community.

No PR to `Jade-ORM/plugins`. Your repo stays yours; you bump versions and push as usual.

## Official plugins

| Plugin | Description |
|--------|-------------|
| `cache` | In-memory query cache |
| `soft-delete` | Soft delete via entity hooks |
| `timestamps` | Auto `created_at` / `updated_at` |
| `tenant` | Tenant id on create |
| `sql-log` | SQL logging via `jade.log` |
