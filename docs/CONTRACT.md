# Plugin contract

Every Jade plugin is a Lua table/module.

## Required

| Field | Type | Notes |
|-------|------|-------|
| `name` | string | Unique id (`"cache"`, `"acme-tenant"`) |
| `version` | string | Semver (`"1.0.0"`) |
| `setup` | function(jade, opts) → ok, err? | Called on `Jade.use` / config load |

## Optional

| Field | Type | Notes |
|-------|------|-------|
| `description` | string | Short summary |
| `author` / `license` | string | Metadata |
| `teardown` | function(jade) | Cleanup on unload |
| `hooks` | table | `{ beforeQuery = fn, afterCreate = fn, extendEntity = fn, ... }` |

## jade-plugin.json (repo root)

```json
{
  "name": "acme-tenant",
  "version": "1.0.0",
  "description": "Multi-tenant scoping for Jade entities",
  "jade": ">=2.0.0",
  "lua": ">=5.1",
  "main": "src/init.lua",
  "repository": "https://github.com/acme/jade-plugin-tenant",
  "keywords": ["tenant", "multi-tenant"]
}
```

## Rules

- Errors raised from plugins must use `jade.errors` (`J####`) when talking to the runtime.
- English-only messages in the plugin Lua surface.
- Do not require modules that are not declared in the plugin README.
- Official plugins live under `official/`; community plugins stay in external repos.
