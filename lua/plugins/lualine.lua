return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      sections = {
        lualine_c = {
          { 'filename', path = 1 } -- 0 = filename, 1 = relative path, 2 = absolute path
        }
      },
      inactive_sections = {
        lualine_c = {
          { 'filename', path = 1 } -- inactive windows
        }
      },
      options = {
        --theme = 'dracula'
        theme = 'codedark'
      }
    })
  end
}

