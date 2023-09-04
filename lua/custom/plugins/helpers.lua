return {
  {
    'ggandor/leap.nvim',
    lazy = false,
    config = function()
      require('leap').add_default_mappings(true)
    end,
  },
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    'max397574/better-escape.nvim',
    event = 'InsertEnter',
    config = function()
      require('better_escape').setup()
    end,
  },
  {
    'gbprod/cutlass.nvim',
  },
  {
    'chrishrb/gx.nvim',
    event = { 'BufEnter' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true, -- default settings
  },
  {
    'nvim-pack/nvim-spectre',
    cmd = 'Spectre',
    opts = { open_cmd = 'noswapfile vnew' },
  -- stylua: ignore
    keys = {
      { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
    },
  },
}
