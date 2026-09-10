local M = {}

M.name = "my-plugin"
M.version = "0.1.0"
M.description = "Template community plugin"

M.hooks = {}

function M.setup(jade, opts)
  return true
end

function M.teardown(jade)
end

return M
