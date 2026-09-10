# Community plugins

Community plugins are **not** vendored here and are **not** listed in [`registry.json`](../registry.json) (official-only index).

They live in **your own public GitHub repo** and are self-published on **Jade Docs → Plugins** after GitHub login. Do **not** open a PR in this repo to register a community plugin.

## Template

Copy `template/` → your repo, implement `setup`/`teardown`, fill `jade-plugin.json`, then:

1. Open **Jade Docs → Plugins → Submit**
2. Sign in with GitHub
3. Paste your repo URL

Docs validates `jade-plugin.json` and lists the plugin under Community.

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
