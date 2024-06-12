return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    enabled = false,
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "prettier",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
    },
    auto_install = true,
  },
  {
    "kyazdani42/nvim-tree.lua",
    lazy = true,
    event = "BufRead",
    cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require "configs.user.nvimtree"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = { "BufRead", "BufNewFile", "InsertEnter" },
    config = function()
      require "configs.user.lualine"
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    lazy = true,
    dependencies = {
      "nvimtools/none-ls.nvim",
      dependencies = {
        "nvimtools/none-ls-extras.nvim",
        lazy = true,
      },
      config = function()
        require "configs.user.null_ls"
      end,
    },
    event = "InsertEnter",
    opts = function()
      require "configs.user.mason-null-ls"
    end,
  },
  {
    "mrjones2014/smart-splits.nvim",
    event = "BufRead",
    config = function()
      require "configs.user.smartsplit"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    event = "BufRead",
    config = function()
      require "configs.user.toggleterm"
    end,
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "kabouzeid/nvim-lspinstall",
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-a>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
    end,
  },
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
  },
}
