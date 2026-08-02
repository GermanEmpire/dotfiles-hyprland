return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = function()
      local P = {
        bg = "#000000",
        bg2 = "#121219",
        bg3 = "#1a1624",
        sel = "#332d49",

        fg = "#f3f2ff",
        fg2 = "#d6cfff",
        fg3 = "#bfb6f2",

        c1 = "#3a2f4d",
        c2 = "#4a3a66",
        c3 = "#5a4a80",
        c4 = "#6b5b9a",
        c5 = "#7c6bb5",
        c6 = "#8d7bd0",
        c7 = "#a89de6",
        accent = "#b2aad3",
      }

      return {
        flavour = "mocha",
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = true,

        styles = {
          comments = { "italic" },
          conditionals = { "bold" },
          loops = { "bold" },
          functions = { "bold" },
          keywords = { "bold" },
          types = {},
          operators = {},
          booleans = {},
          properties = {},
        },

        color_overrides = {
          mocha = {
            rosewater = P.fg2,
            flamingo = P.fg3,
            pink = P.accent,
            mauve = P.accent,
            red = P.c3,
            maroon = P.c3,
            peach = P.c6,
            yellow = P.c6,
            green = P.c5,
            teal = P.c5,
            sky = P.c7,
            sapphire = P.c7,
            blue = P.c7,
            lavender = P.fg2,

            text = P.fg,
            subtext1 = P.fg2,
            subtext0 = P.fg3,
            overlay2 = P.c6,
            overlay1 = P.c5,
            overlay0 = P.c4,
            surface2 = P.sel,
            surface1 = P.bg3,
            surface0 = P.bg2,

            base = P.bg,
            mantle = P.bg,
            crust = P.bg,
          },
        },

        custom_highlights = function(colors)
          return {
            Normal = { fg = P.fg, bg = P.bg },
            NormalNC = { fg = P.fg, bg = P.bg },
            NormalFloat = { fg = P.fg, bg = P.bg2 },
            FloatBorder = { fg = P.bg3, bg = P.bg2 },

            CursorLine = { bg = P.bg2 },
            CursorColumn = { bg = P.bg2 },
            ColorColumn = { bg = P.bg2 },
            Visual = { bg = P.sel },

            LineNr = { fg = P.c3 },
            CursorLineNr = { fg = P.accent, bold = true },
            SignColumn = { bg = P.bg },
            EndOfBuffer = { fg = P.bg },

            WinSeparator = { fg = P.bg3 },
            VertSplit = { fg = P.bg3 },

            Search = { fg = P.bg, bg = P.accent, bold = true },
            IncSearch = { fg = P.bg, bg = P.fg2, bold = true },

            Pmenu = { fg = P.fg, bg = P.bg2 },
            PmenuSel = { fg = P.bg, bg = P.accent, bold = true },
            PmenuSbar = { bg = P.bg2 },
            PmenuThumb = { bg = P.accent },

            StatusLine = { fg = P.fg, bg = P.bg },
            StatusLineNC = { fg = P.c4, bg = P.bg },

            TabLine = { fg = P.c4, bg = P.bg2 },
            TabLineFill = { bg = P.bg },
            TabLineSel = { fg = P.bg, bg = P.accent, bold = true },

            Comment = { fg = P.c4, italic = true },
            Constant = { fg = P.fg3 },
            String = { fg = P.fg2 },
            Character = { fg = P.fg2 },
            Number = { fg = P.fg3 },
            Boolean = { fg = P.fg3 },
            Float = { fg = P.fg3 },

            Identifier = { fg = P.fg2 },
            Function = { fg = P.accent, bold = true },

            Statement = { fg = P.fg3, bold = true },
            Conditional = { fg = P.fg3, bold = true },
            Repeat = { fg = P.fg3, bold = true },
            Label = { fg = P.fg3 },
            Operator = { fg = P.accent },
            Keyword = { fg = P.fg3, bold = true },
            Exception = { fg = P.fg3, bold = true },

            PreProc = { fg = P.c7 },
            Include = { fg = P.c7 },
            Define = { fg = P.c7 },
            Macro = { fg = P.c7 },
            PreCondit = { fg = P.c7 },

            Type = { fg = P.c7 },
            StorageClass = { fg = P.c7 },
            Structure = { fg = P.c7 },
            Typedef = { fg = P.c7 },

            Special = { fg = P.fg2 },
            SpecialChar = { fg = P.fg2 },
            Tag = { fg = P.accent },
            Delimiter = { fg = P.fg2 },
            SpecialComment = { fg = P.c4, italic = true },
            Debug = { fg = P.c6 },

            DiagnosticError = { fg = P.c3 },
            DiagnosticWarn = { fg = P.c6 },
            DiagnosticInfo = { fg = P.accent },
            DiagnosticHint = { fg = P.c7 },

            DiagnosticUnderlineError = { undercurl = true, sp = P.c3 },
            DiagnosticUnderlineWarn = { undercurl = true, sp = P.c6 },
            DiagnosticUnderlineInfo = { undercurl = true, sp = P.accent },
            DiagnosticUnderlineHint = { undercurl = true, sp = P.c7 },

            GitSignsAdd = { fg = P.c5 },
            GitSignsChange = { fg = P.accent },
            GitSignsDelete = { fg = P.c3 },

            TelescopeNormal = { fg = P.fg, bg = P.bg2 },
            TelescopeBorder = { fg = P.bg3, bg = P.bg2 },
            TelescopePromptNormal = { fg = P.fg, bg = P.bg2 },
            TelescopePromptBorder = { fg = P.bg3, bg = P.bg2 },
            TelescopeResultsNormal = { fg = P.fg, bg = P.bg2 },
            TelescopePreviewNormal = { fg = P.fg, bg = P.bg2 },
            TelescopeSelection = { bg = P.sel },
            TelescopeMatching = { fg = P.accent, bold = true },
            TelescopeTitle = { fg = P.accent, bold = true },

            SnacksPicker = { fg = P.fg, bg = P.bg2 },
            SnacksPickerBorder = { fg = P.bg3, bg = P.bg2 },
            SnacksPickerTitle = { fg = P.accent, bold = true },
            SnacksPickerPrompt = { fg = P.accent, bg = P.bg2 },
            SnacksPickerInput = { fg = P.fg, bg = P.bg2 },
            SnacksPickerInputBorder = { fg = P.bg3, bg = P.bg2 },
            SnacksPickerBoxBorder = { fg = P.bg3, bg = P.bg2 },
            SnacksPickerListCursorLine = { bg = P.sel },
            SnacksPickerMatch = { fg = P.accent, bold = true },
            SnacksPickerDir = { fg = P.c4 },
            SnacksPickerFile = { fg = P.fg },
            SnacksPickerCursorLine = { bg = P.sel },

            SnacksDashboardHeader = { fg = P.accent, bold = true },
            SnacksDashboardDesc = { fg = P.fg2 },
            SnacksDashboardIcon = { fg = P.accent },
            SnacksDashboardKey = { fg = P.fg3 },
            SnacksDashboardFooter = { fg = P.accent },
            SnacksDashboardSpecial = { fg = P.c7 },

            LazyNormal = { fg = P.fg, bg = P.bg2 },
            LazyButton = { fg = P.fg, bg = P.bg2 },
            LazyButtonActive = { fg = P.bg, bg = P.accent, bold = true },

            NeoTreeNormal = { fg = P.fg, bg = P.bg },
            NeoTreeNormalNC = { fg = P.fg, bg = P.bg },
            NeoTreeFloatNormal = { fg = P.fg, bg = P.bg2 },
            NeoTreeFloatBorder = { fg = P.bg3, bg = P.bg2 },
            NeoTreeTitleBar = { fg = P.bg, bg = P.accent, bold = true },
            NeoTreeDirectoryName = { fg = P.fg2 },
            NeoTreeRootName = { fg = P.accent, bold = true },

            WhichKey = { fg = P.accent, bold = true },
            WhichKeyGroup = { fg = P.fg2 },
            WhichKeyDesc = { fg = P.fg },
            WhichKeyFloat = { bg = P.bg2 },

            ["@variable"] = { fg = P.fg2 },
            ["@variable.builtin"] = { fg = P.accent },
            ["@variable.parameter"] = { fg = P.fg },
            ["@constant"] = { fg = P.fg3 },
            ["@constant.builtin"] = { fg = P.fg3 },
            ["@property"] = { fg = P.accent },
            ["@field"] = { fg = P.accent },
            ["@parameter"] = { fg = P.fg },
            ["@type"] = { fg = P.c7 },
            ["@type.builtin"] = { fg = P.c7 },
            ["@type.definition"] = { fg = P.c7 },
            ["@function"] = { fg = P.accent, bold = true },
            ["@function.builtin"] = { fg = P.accent, bold = true },
            ["@function.method"] = { fg = P.accent, bold = true },
            ["@constructor"] = { fg = P.c7 },
            ["@keyword"] = { fg = P.fg3, bold = true },
            ["@keyword.function"] = { fg = P.fg3, bold = true },
            ["@keyword.return"] = { fg = P.fg3, bold = true },
            ["@operator"] = { fg = P.accent },
            ["@string"] = { fg = P.fg2 },
            ["@string.escape"] = { fg = P.fg2 },
            ["@number"] = { fg = P.fg3 },
            ["@boolean"] = { fg = P.fg3 },
            ["@punctuation.delimiter"] = { fg = P.fg2 },
            ["@punctuation.bracket"] = { fg = P.fg2 },
            ["@tag"] = { fg = P.accent },
            ["@tag.attribute"] = { fg = P.fg2 },

            ["@lsp.type.variable"] = { fg = P.fg2 },
            ["@lsp.type.property"] = { fg = P.accent },
            ["@lsp.type.parameter"] = { fg = P.fg },
            ["@lsp.type.function"] = { fg = P.accent, bold = true },
            ["@lsp.type.method"] = { fg = P.accent, bold = true },
            ["@lsp.type.type"] = { fg = P.c7 },
            ["@lsp.type.keyword"] = { fg = P.fg3, bold = true },
          }
        end,

        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          telescope = true,
          notify = true,
          mini = true,
          which_key = true,
          mason = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              warnings = { "undercurl" },
              hints = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      }
    end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local lavender = "#b2aad3"
      local fg = "#f3f2ff"
      local bg = "#000000"
      local bg2 = "#121219"
      local sel = "#332d49"
      local purple = "#d6cfff"
      local muted = "#6b5b9a"

      opts.options.theme = {
        normal = {
          a = { fg = bg, bg = lavender, gui = "bold" },
          b = { fg = fg, bg = sel },
          c = { fg = fg, bg = bg },
        },
        insert = {
          a = { fg = bg, bg = purple, gui = "bold" },
          b = { fg = fg, bg = sel },
          c = { fg = fg, bg = bg },
        },
        visual = {
          a = { fg = bg, bg = "#bfb6f2", gui = "bold" },
          b = { fg = fg, bg = sel },
          c = { fg = fg, bg = bg },
        },
        replace = {
          a = { fg = bg, bg = "#8d7bd0", gui = "bold" },
          b = { fg = fg, bg = sel },
          c = { fg = fg, bg = bg },
        },
        command = {
          a = { fg = bg, bg = lavender, gui = "bold" },
          b = { fg = fg, bg = sel },
          c = { fg = fg, bg = bg },
        },
        inactive = {
          a = { fg = muted, bg = bg2, gui = "bold" },
          b = { fg = muted, bg = bg2 },
          c = { fg = muted, bg = bg },
        },
      }
    end,
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      highlights = {
        fill = {
          bg = "#000000",
        },
        background = {
          fg = "#6b5b9a",
          bg = "#121219",
        },
        buffer_selected = {
          fg = "#f3f2ff",
          bg = "#000000",
          bold = true,
        },
        separator = {
          fg = "#121219",
          bg = "#121219",
        },
        separator_selected = {
          fg = "#000000",
          bg = "#000000",
        },
        indicator_selected = {
          fg = "#b2aad3",
          bg = "#000000",
        },
      },
    },
  },

  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗
██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║
██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║
██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
]],
        },
      },
    },
  },
}