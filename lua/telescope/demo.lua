local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local conf = require('telescope.config').values
local builtin = require 'telescope.builtin'

-- our picker function: colors
local colors = function(opts)
  opts = opts or {}
  pickers
    .new(opts, {
      prompt_title = 'colors',
      finder = finders.new_table {
        results = { 'red', 'green', 'blue' },
      },

      sorter = conf.generic_sorter(opts),
    })
    :find()
end

-- to execute the function
colors(require('telescope.themes').get_dropdown {})
