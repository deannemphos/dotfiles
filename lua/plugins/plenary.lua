return {
  {
    'nvim-lua/plenary.nvim',
    as = 'plenary',
    config = function()
      require('plenary.reload').reload_module('plenary')
  },
}
