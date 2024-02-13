-- vim.cmd for compatibility
vim.cmd [[
autocmd FileType * setlocal formatoptions-=cro whichwrap=<,>,[,],h,l iskeyword+=-
autocmd FileType (netrw|Jaq|qf|git|help|man|lspinfo|spectre_panel|lir|DressingSelect|tsplayground|'') nnoremap <silent> <buffer> q :close<LF>set nobuflisted<LF>
autocmd CmdWinEnter :quit<LF>
autocmd VimResized tabdo wincmd =
]]
