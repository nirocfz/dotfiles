" goyo, limelight
nnoremap <Leader>go :Goyo<CR>
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)
" 进入 goyo 模式时，自动开启 limelight，退出 goyo，自动关闭 limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let b:delimitMate_nesting_quotes = ['`']
let b:delimitMate_expand_cr = 2
let b:delimitMate_expand_space = 0
let b:delimitMate_expand_inside_quotes = 1

colorscheme seoul256
let g:airline_theme = 'zenburn'
