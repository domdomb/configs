return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },

    config = function()
      require("codecompanion").setup({
        extensions = {
          mcphub = {
            callback = "mcphub.extensions.codecompanion",
            opts = {
              make_vars = true,
              make_slash_commands = true,
              show_result_in_chat = true
            }
          }
        },
        strategies = {
          chat = {
            adapter = "ollama",
            context = {
              "buffers",
            },
            variables = {
              ["buffer"] = {
                opts = {
                  default_params = 'watch',
                },
              },
            },
          },
          inline = { adapter = "ollama" },
        },
        adapters = {
          ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
              env = {
                url = "https://ollama.dlavezzoli.com",
              },
              parameters = {
                model = "codellama:13b",
                sync = true
              },
            })
          end,
        },
      })
    end
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "ravitemer/mcphub.nvim"
    }
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" }
  },
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require("mini.diff")
      diff.setup({
        -- Disabled by default
        source = diff.gen_source.none(),
      })
    end,
  },
}

