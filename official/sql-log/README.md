# Official plugin: sql-log

Logs every SQL statement through `jade.util.log` (structured, English).

## Install

```lua
Jade.use(require("jade.plugin.sql_log"), { level = "info" })
```

## Hooks

| Hook | Behavior |
|------|----------|
| `beforeQuery` | `log.sql(ctx.sql, ctx.bindings)` |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `level` | `info` | Reserved; current hook always uses `log.sql` |

Requires Jade `>=2.0.0` (driver `execute` decoration from the plugin loader audit).
