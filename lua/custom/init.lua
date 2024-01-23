-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- enalbe window resizer
vim.g.winresizer_enable = 1
vim.g.winresizer_start_key = "<C-w>r"

local helpers = require("custom.helpers")
helpers.ChangeColorSchema()
helpers.AllowNotSaveFile()
helpers.GolangAllowFormatOnSave()
helpers.RemapsWindowResizer()
