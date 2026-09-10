# Official plugin: soft-delete

Adds soft-delete behavior via entity hooks (`deleted_at` column conventions).

## Install

```lua
Jade.use(require("jade.plugin.soft_delete"))
```

See core docs → Soft Delete for query helpers (`withTrashed`, `onlyTrashed`, `forceDelete`).
