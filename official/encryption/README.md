# Official plugin: encryption

Field-level encryption. Thin wrapper around `jade.encryption` (database-native AES or custom Lua functions).

## Install

```lua
Jade.use(require("jade.plugin.encryption"), {
  key = "my-key",
  algorithm = "aes",
  database_encrypted = true,
  fields = {
    "email",                          -- all entities
    { table = "users", field = "ssn" }, -- one column
  },
})
```

## Hooks

None — configuration only; encrypted columns are marked via `markColumn`.

## Options

| Option | Default | Description |
|--------|---------|-------------|
| `key` | — | Secret key (string) |
| `algorithm` | — | `aes` or `custom` |
| `database_encrypted` | — | Use DB-native AES (pgcrypto / AES_ENCRYPT) |
| `fields` | — | String column names or `{ table, field }` pairs |
| `encrypt_fn` / `decrypt_fn` | — | Required when `algorithm = "custom"` |

Requires Jade `>=2.0.0`.
