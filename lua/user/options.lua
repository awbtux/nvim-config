local globals = {
    mapleader = " ",
    maplocalleader = " ",
    cmp_ui = {
        icons = true,
        lspkind_text = true,
        style = "atom", -- default/flat_light/flat_dark/atom/atom_colored
        border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
        selected_item_bg = "colored", -- colored / simple
    },
    telescope_style = "bordered",
    transparency = false,
}

local settings = {
    autoread = true,
    autoindent = true,
    autowrite = true,
    background = "dark",
    backspace = {
        "indent",
        "eol",
        "start",
    },
    backup = false,
    clipboard = "unnamedplus",
    compatible = false,
    completeopt = {
        "menuone",
        "noselect",
    },
    cmdheight = 1,
    cursorline = true,
    conceallevel = 0,
    encoding = "UTF-8",
    errorbells = false,
    expandtab = true,
    exrc = true,
    fileencoding = "UTF-8",
    fileformat = "unix",
    go = "a",
    guifont = "monospace:h9",
    hidden = true,
    history = 1024,
    hlsearch = true,
    incsearch = true,
    laststatus = 2,
    lazyredraw = true,
    listchars = "tab:>-,trail:.,extends:>,precedes:<,nbsp:+",
    list = true,
    magic = true,
    mouse = "a",
    number = true,
    numberwidth = 4,
    relativenumber = true,
    pumheight = 10,
    ruler = true,
    scrolloff = 16,
    sessionoptions = {
        "curdir",
        "folds",
        "globals",
        "help",
        "buffers",
        "tabpages",
        "terminal",
        "winsize",
    },
    shiftround = true,
    shiftwidth = 4,
    showmode = false,
    showtabline = 2,
    sidescrolloff = 4,
    signcolumn = "yes",
    shortmess = "atI",
    smartcase = true,
    smarttab = true,
    softtabstop = 4,
    spelllang = "en_us",
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 200,
    ttimeoutlen = 200,
    undofile = true,
    undolevels = 1024,
    updatetime = 256,
    viminfo = "",
    visualbell = true,
    wildmenu = true,
    wildmode = {
        "longest",
        "list",
        "full",
    },
    wrap = false,
    writebackup = true,
}

-- parse the 'settings' variable as vim options
for k, v in pairs(settings) do
    vim.opt[k] = v
end

-- parse the 'globals' variable as vim options
for k, v in pairs(globals) do
    vim.g[k] = v
end

-- path separator
if vim.fn.has("win32") then
    vim.g.pathsep = string.format("\\")
else
    vim.g.pathsep = string.format("/")
end
