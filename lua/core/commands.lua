vim.api.nvim_create_user_command("Surround", function()
  pcall(vim.fn.Preserve("exec 'ysaw['"))
end, {})
