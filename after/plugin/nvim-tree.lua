local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
-- 	return
-- end
-- local tree_cb = nvim_tree_config.nvim_tree_callback

  local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

 -- on_attach = "default",   -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', 'l', api.node.open.preview, opts('Up'))
    vim.keymap.set('n', 'h', api.node.open.preview, opts('Up'))
  	vim.keymap.set('n', '<C-y>', api.tree.change_root_to_node,          opts('CD'))
    -- vim.keymap.set('n', ';', api.node.tree.change_root_to_node, opts('CD'))
    -- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  end

  -- pass to setup along with your other options
  --nvim_tree.setup {
  --  ---
  --  on_attach = my_on_attach,
  --  ---
  --}

-- nvim_tree.setup({})
nvim_tree.setup {
	on_attach = my_on_attach,
	-- on_attach = "default",
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  sort = {
    sorter = "name",
    folders_first = true,
    files_first = false,
  },
  root_dirs = {},
  prefer_startup_root = false,
  sync_root_with_cwd = false,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  select_prompts = false,
  view = {
    centralize_selection = false,
    cursorline = true,
    debounce_delay = 15,
    width = 100,
    -- hide_root_folder = false,
    -- side = "center",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    float = {
      enable = true,
      quit_on_focus_loss = true,
			open_win_config = function ()
				local screen_w = vim.o.columns
        local screen_h = vim.o.lines

        -- local win_w = 70
        -- local win_h = 30
				--
				local win_w = math.floor(screen_w * 0.7)
				local win_h = math.floor(screen_h * 0.8)

        local center_x = math.floor((screen_w - win_w) / 2)
        local center_y = math.floor((screen_h - win_h) / 2)

        return {
          relative = "editor",
          border = "rounded",
          width = win_w,
          height = win_h,
          row = center_y,
          col = center_x,
        }
			end
      -- open_win_config = {
      --   relative = "editor",
      --   border = "rounded",
      --   width = 70,
      --   height = 30,
      --   row = 2,
      --   col = 2,
      -- },
    },
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = "none",
    highlight_modified = "none",
    root_folder_label = ":~:s?$?/..?",
    indent_width = 2,
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
        folder = {
          enable = false,
          color = true,
        },
      },
      git_placement = "before",
      modified_placement = "after",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "󰆤",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = {
      "Cargo.toml",
      "Makefile",
      "README.md",
      "readme.md"
    },
    symlink_destination = true,
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_root = false,
    ignore_list = {},
  },
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    git_ignored = true,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    custom = {},
    exclude = {},
  },
  filesystem_watchers = {
    enable = true,
    debounce_delay = 50,
    ignore_dirs = {},
  },
  git = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
    disable_for_dirs = {},
    timeout = 400,
  },
  modified = {
    enable = false,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
      exclude = {},
    },
    file_popup = {
      open_win_config = {
        col = 1,
        row = 1,
        relative = "cursor",
        border = "shadow",
        style = "minimal",
      },
    },
    open_file = {
      quit_on_open = true,
      eject = true,
      resize_window = true,
      window_picker = {
        enable = true,
        picker = "default",
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {
            "notify",
            "packer",
            "qf",
            "diff",
            "fugitive",
            "fugitiveblame"
          },
          buftype = {
            "nofile",
            "terminal",
            "help"
          },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
  trash = {
    cmd = "gio trash",
  },
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
  tab = {
    sync = {
      open = false,
      close = false,
      ignore = {},
    },
  },
  notify = {
    threshold = vim.log.levels.INFO,
    absolute_path = true,
  },
  ui = {
    confirm = {
      remove = true,
      trash = true,
    },
  },
  experimental = {},
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      dev = false,
      diagnostics = false,
      git = false,
      profile = false,
      watcher = false,
    },
  },
}
