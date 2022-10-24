
local api = vim.api
local fn = vim.fn

api.nvim_exec([[
autocmd BufNewFile,BufRead *.slim setfiletype slim
autocmd BufNewFile,BufRead /tmp/mutt-* setfiletype mail
autocmd BufNewFile,BufRead /*.rasi setfiletype css
augroup ruby_subtypes
  autocmd!
  autocmd BufNewFile,BufRead *.pdf.erb let b:eruby_subtype='html'
  autocmd BufNewFile,BufRead *.pdf.erb setfiletype eruby
augroup END
autocmd BufNewFile,BufRead jquery.*.js setfiletype javascript syntax=jquery
autocmd BufNewFile,BufRead *.ejs setfiletype html
autocmd BufNewFile,BufRead *.liquid setfiletype html
autocmd BufNewFile,BufRead *.asm setlocal filetype=nasm shiftwidth=4
autocmd FileType TelescopePrompt setlocal nocursorline
]], true)

api.nvim_exec([[
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd BufRead,BufNewFile *.md setlocal spell
]], true)

-- Set cursor to the last position on file open
api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local last_pos = fn.line("'\"")
    if last_pos > 0 and last_pos <= fn.line("$") then
      api.nvim_win_set_cursor(0, {last_pos, 0})
    end
  end,
})

-- Highlight yanked text
api.nvim_create_autocmd("TextYankPost", {
  callback =  function()
    vim.highlight.on_yank()
  end,
})

