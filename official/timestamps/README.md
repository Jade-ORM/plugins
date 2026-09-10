# Official plugin: timestamps

Fills `created_at` / `updated_at` automatically on create and update.

## Install

```lua
Jade.use(require("jade.plugin.timestamps"))
-- or custom column names
Jade.use(require("jade.plugin.timestamps"), {
  created_at = "created_at",
  updated_at = "updated_at",
})
```

## Hooks

| Hook | Behavior |
|------|----------|
| `beforeCreate` | Sets both columns if missing (UTC `YYYY-MM-DD HH:MM:SS`) |
| `beforeUpdate` | Always overwrites the updated column |

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `created_at` | `created_at` | Create timestamp column |
| `updated_at` | `updated_at` | Update timestamp column |

Requires Jade `>=2.0.0` (CRUD hook wiring from the plugin loader audit).
