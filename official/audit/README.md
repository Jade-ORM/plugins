# Official plugin: audit

Audit trail for create/update/delete with field-level change snapshots. Thin wrapper around `jade.audit`.

## Install

```lua
local audit = require("jade.plugin.audit")
Jade.use(audit, { ignore = { "password", "ssn" } })

-- query logs later
audit.query(driver, { table_name = "users", action = "update" })
```

## Hooks

| Hook | Behavior |
|------|----------|
| `extendEntity` | `BaseAudit.setup(entity, options)` per entity |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `ignore` | `{}` | Fields excluded from audit snapshots |

Creates the `jade_audit_logs` table on first write (auto-create).

Requires Jade `>=2.0.0`.
