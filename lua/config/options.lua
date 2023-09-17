-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.vscode then
  -- undo/REDO via vscode
  vim.keymap.set("n", "u", "<Cmd>call VSCodeNotify('undo')<CR>")
  vim.keymap.set("n", "<C-r>", "<Cmd>call VSCodeNotify('redo')<CR>")
  vim.opt.timeoutlen = 1000
  local hls = {
    FlashBackdrop = { fg = "#928374" },
    FlashCurrent = { bg = "#83a598", fg = "#282828" },
    FlashLabel = { bg = "#fe8019", bold = true, fg = "#282828" },
    FlashMatch = { bg = "#fabd2f", fg = "#282828" },
  }

  for hl_group, hl in pairs(hls) do
    vim.api.nvim_set_hl(0, hl_group, hl)
    hl.default = true
  end

  vim.api.nvim_set_hl(0, "Search", { bg = "#fadb2f", fg = "#282828" })
end

-- comments #guifg=#928374
-- search guifg=#fabd2f guibg=#282828
-- IncSearch guifg=#fe8019 guibg=#282828
-- substitute guifg= #fabd2f guibg=#282828
-- substitute links to search
-- msgarea
-- special links to gruvbox orange guifg=#fe8019
--
-- FlashBackdrop = "Comment",
-- FlashMatch = "Search",
-- FlashCurrent = "IncSearch",
-- FlashLabel = "Substitute",
-- FlashPrompt = "MsgArea",
-- FlashPromptIcon = "Special",
