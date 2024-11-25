return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

<<<<<<< HEAD
  {
    "github/copilot.vim",
    lazy = false,
    config = function()  -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;
      vim.g.copilot_tab_fallback = "";
    -- The mapping is set to other key, see custom/lua/mappings
    -- or run <leader>ch to see copilot mapping section
      vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("")', {silent = true})
    end
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "c", "cpp",
  		},
  	},
  },
  {
    "mbbill/undotree",
  }
=======
  {
    "github/copilot.vim",
    lazy = false,
    config = function()  -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
    -- The mapping is set to other key, see custom/lua/mappings
    -- or run <leader>ch to see copilot mapping section
      vim.api.nvim_set_keymap("i", "<C-Right>", 'copilot#Accept("")', {silent = true})
    end
  },
>>>>>>> 746f9acf35cbcde4b4b929df0e7d8889ea8c2dbe
}
