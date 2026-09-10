# Official plugin: optimistic-lock

Optimistic concurrency control via a version column. Adds a `version` field and bumps it on update; conflicts surface as `nil` from `update`.

## Install

```lua
Jade.use(require("jade.plugin.optimistic_lock"), { column = "version" })
```

## Hooks

| Hook | Behavior |
|------|----------|
| `extendEntity` | Installs version column + wraps `entity.update` |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `column` | `version` | Version column name |

On update conflict (`update` returns `nil`), the caller should retry or raise an application error.

Requires Jade `>=2.0.0` (extendEntity receives real install options).
