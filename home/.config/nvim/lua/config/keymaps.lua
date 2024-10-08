-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function copy_file_name(include_line_number)
  local file_name = vim.fn.expand("%:p")
  local line_number = vim.fn.line(".")
  local copy_text

  if include_line_number then
    copy_text = file_name .. ":" .. line_number
  else
    copy_text = file_name
  end

  vim.fn.setreg("+", copy_text)
  print("Copied to clipboard: " .. copy_text)
end

vim.keymap.set("n", "<leader>fy", function()
  copy_file_name(false)
end, { noremap = true, silent = true, desc = "Copy file name" })

vim.keymap.set("n", "<leader>fY", function()
  copy_file_name(true)
end, { noremap = true, silent = true, desc = "Copy file name and line number" })
