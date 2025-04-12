return {
  -- https://github.com/ahmedkhalf/project.nvim
  -- Auto detects project root for use with file explorer (Oil)
  'ahmedkhalf/project.nvim',
  enabled = true,
  config = function()
    require('project_nvim').setup {}
  end,
}
