---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format { async = true, lsp_fallback = true }
      end,
      "formatting",
    },
    ["vs"] = {
      "<cmd> vsplit<cr>",
      "split window as vertical",
      opts = { nowait = true },
    },

    ["hs"] = {
      "<cmd> split<cr>",
      "split window as horihontal",
      opts = { nowait = true },
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- overides
M.tabufline = {
  n = {
    -- modify close buffer
    ["<s-w>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>tt"] = { "<cmd> Telescope live_grep <CR>", "telescope live grep" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>o"] = { "<cmd> Lspsaga outline<CR>", "lsp saga outline" },
    ["gh"] = { "<cmd>Lspsaga finder tyd+ref+def+imp<CR>" },
  },
}

return M
