return {
  -- https://github.com/echasnovski/mini.nvim
  -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup {
      mappings = {
        -- inside = 't',
      },
      n_lines = 500,
      custom_textobject = nil,
    }
    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    -- The trick to this is to do it fast. If you wait too long after
    -- pressing 's' you'll be using Substitute.
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Move text up/down/left/right
    --
    -- - ALT-n - Move up
    -- - ALT-e - Move down
    require('mini.move').setup {
      mappings = {
        -- Move in visual mode
        left = '<M-h>',
        right = '<M-i>',
        down = '<M-n>',
        up = '<M-e>',
        -- Move in normal mode
        line_left = '<M-h>',
        line_right = '<M-i>',
        line_down = '<M-n>',
        line_up = '<M-e>',
      },
      options = {
        reindent_linewise = true,
      },
    }

    -- Navigate around parts of neovim with '[' and ']' key mappings
    require('mini.bracketed').setup()

    -- Provides a nicer start up experience
    require('mini.starter').setup {}

    vim.api.nvim_create_autocmd({ 'User' }, {
      pattern = { 'MiniStarterOpened' },
      callback = function()
        local buf_id = vim.api.nvim_get_current_buf()
        local buf_keymap = function(key, cmd)
          vim.keymap.set('n', key, ('<Cmd>lua %s<CR>'):format(cmd), { buffer = buf_id, nowait = true, silent = true })
        end

        buf_keymap('<CR>', 'MiniStarter.eval_current_item()')

        buf_keymap('<Up>', [[MiniStarter.update_current_item('prev')]])
        buf_keymap('<C-e>', [[MiniStarter.update_current_item('prev')]])
        buf_keymap('<Down>', [[MiniStarter.update_current_item('next')]])
        buf_keymap('<C-n>', [[MiniStarter.update_current_item('next')]])
      end,
    })

    -- Simple and easy statusline.
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
}
