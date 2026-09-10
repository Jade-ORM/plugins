# Community plugins

Community plugins are **not** vendored here. They live in their own GitHub repos and are indexed in [`registry.json`](../registry.json).

## Template

Copy `template/` → your repo, implement `setup`/`teardown`, fill `jade-plugin.json`, then open a PR adding an entry to `registry.json`.

```lua
-- src/init.lua
local M = {}
M.name = "my-plugin"
M.version = "0.1.0"
M.description = "What it does"

M.hooks = {
  extendEntity = function(ctx)
    -- customize entities
  end,
}

function M.setup(jade, opts)
  return true
end

return M
```
