# Official plugin: tenant

Multi-tenant helper: injects `tenant_id` on create and stamps the query context.

## Install

```lua
local tenant = require("jade.plugin.tenant")
Jade.use(tenant, { column = "tenant_id", value = 42 })

-- per request / middleware
tenant.set(99)
print(tenant.get())
tenant.clear()
```

## Hooks

| Hook | Behavior |
|------|----------|
| `beforeCreate` | Sets `column` on `data` when unset |
| `beforeQuery` | Sets `ctx.tenant_id` (informational — no WHERE injection yet) |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `column` | `tenant_id` | Column name |
| `value` | `nil` | Initial tenant id |

## Status

`0.1.0` — process-local scope is fine for demos. Production apps should call `tenant.set` per request. Full WHERE scoping is not implemented yet.

Requires Jade `>=2.0.0`.
