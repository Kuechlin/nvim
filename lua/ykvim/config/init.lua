local M = {}

function _load(name)
  require("ykvim.config." .. name)
end

function M.setup()
  _load("keymaps")
end

return M
