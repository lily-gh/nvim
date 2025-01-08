return {{
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        local colors = {
            rosewater = "#f4dbd6",
            flamingo = "#f0c6c6",
            pink = "#f5bde6",
            mauve = "#c6a0f6",
            red = "#f7768e",
            maroon = "#ee99a0",
            peach = "#ff9e64",
            yellow = "#e0af68",
            green = "#a6da95",
            teal = "#8bd5ca",
            sky = "#91d7e3",
            sapphire = "#7dc4e4",
            blue = "#7aa2f7",
            lavender = "#b7bdf8",
            text = "#cad3f5",
            subtext1 = "#b8c0e0",
            subtext0 = "#a5adcb",
            overlay2 = "#939ab7",
            overlay1 = "#8087a2",
            overlay0 = "#6e738d",
            surface2 = "#5b6078",
            surface1 = "#494d64",
            surface0 = "#363a4f",
            base = "#24273a",
            mantle = "#1e2030",
            crust = "#181926"
        }

        local filetype = {
          "filetype",
          colored = true,
          color = { bg = "#313244" },
          separator = { left = "", right = "" },
          right_padding = 6
        }

        local progress = {
            "progress",
            color = {
                fg = colors.sky,
                bg = colors.surface0
            },
            separator = {
                left = "",
                right = ""
            },
            left_padding = 2,
            right_padding = 2
        }

        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = {
                    left = '',
                    right = ''
                },
                section_separators = {
                    left = '',
                    right = ''
                },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {}
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100
                }
            },
            sections = {
                lualine_a = {{
                    'mode',
                    separator = {
                        left = '',
                        right = ''
                    },
                    right_padding = 2
                }},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', filetype},
                lualine_y = {progress},
                lualine_z = {{
                    'location',
                    separator = {
                      left = '',
                        right = ''
                    },
                    left_padding = 2,
                    right_padding = 2
                }}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}}
