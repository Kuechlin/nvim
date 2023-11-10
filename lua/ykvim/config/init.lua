local M = {}

function M.setup()
  function _load(name)
    require("ykvim.config." .. name)
  end

  _load("settings")
  _load("keymaps")
  _load("lsp")
  _load("cmp")
end

return M
