require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    "javascript",
    "python",
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "sql",
    "gitignore",
    "css",
    "html",
    "astro",
    "latex",
    "rust"
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
