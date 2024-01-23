-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("go.format").goimport()
  end,
  group = format_sync_grp,
})

-- enalbe window resizer
vim.g.winresizer_enable = 1
vim.g.winresizer_start_key = "<C-w>r"

local function initNeogitColorSchema()
  vim.cmd [[
     hi default NeogitDiffAddHighlight guifg=#00FF00 guibg=#003300
     hi default NeogitDiffAdd guifg=#00FF00 guibg=#003300

     hi default NeogitDiffDeleteHighlight guifg=#FF0000 guibg=#330000
     hi default NeogitDiffDelete guifg=#FF0000 guibg=#330000
  ]]
end

initNeogitColorSchema()

