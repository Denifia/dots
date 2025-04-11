return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      shortcut_type = 'number',
      change_to_vcs_root = true,
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          { desc = '󰊳 Update Lazy', group = '@property', action = 'Lazy update', key = 'u' },
          { desc = '󰊳 Update Mason', group = '@property', action = 'MasonUpdate', key = 'm' },
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
