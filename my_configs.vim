" hamxiaoz custom

" font and color
""""""""""""""""""""""""""""""""""""""""""""""""""
" override the default
" Set font according to system
if has("mac") || has("macunix")
    set gfn=Menlo\ Regular:h12 " hamxiaoz
    set shell=/bin/bash
elseif has("win16") || has("win32")
    set gfn=Bitstream\ Vera\ Sans\ Mono:h10
    " hamxiaoz
    set gfn=Consolas:h10 
    set guifontwide=SimHei " for Chinese
elseif has("linux")
    set gfn=Monospace\ 10
    set shell=/bin/bash
endif

if has("gui_running")
  set guioptions+=e
  colorscheme sonofobsidian_hamxiaoz
  set nu
else
  colorscheme zellner
  set background=dark

  set nonu
endif

" TODO how to do this? need test on mac
" " hamxiaoz
" Open MacVim in fullscreen mode
"if has("gui_macvim")
    "set fuoptions=maxvert,maxhorz
    "au GUIEnter * set fullscreen
"endif

" windows stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win16") || has("win32")

    " Use CTRL-S for saving, also in Insert mode
    noremap <C-S> :update<CR>
    vnoremap <C-S> <C-C>:update<CR>
    inoremap <C-S> <C-O>:update<CR>

    " CTRL+T and CTRL+W to open and close tab
    map <C-T> :tabnew<cr>
    "map <C-W> :tabclose<cr> " use the default CTRL+W for window/split management. To close tab, you can use CTRL+W Q

    " ** copied from mvwin.vim **

    " backspace and cursor keys wrap to previous/next line
    set backspace=indent,eol,start whichwrap+=<,>,[,]

    " backspace in Visual mode deletes selection
    vnoremap <BS> d

    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x
    vnoremap <S-Del> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>		"+gP
    map <S-Insert>		"+gP

    cmap <C-V>		<C-R>+
    cmap <S-Insert>		<C-R>+

    " Pasting blockwise and linewise selections is not possible in Insert and
    " Visual mode without the +virtualedit feature.  They are pasted as if they
    " were characterwise instead.
    " Uses the paste.vim autoload script.

    exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
    exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

    imap <S-Insert>		<C-V>
    vmap <S-Insert>		<C-V>

    " Use CTRL-Q to do what CTRL-V used to do
    noremap <C-Q>		<C-V>

    " Use CTRL-S for saving, also in Insert mode
    noremap <C-S>		:update<CR>
    vnoremap <C-S>		<C-C>:update<CR>
    inoremap <C-S>		<C-O>:update<CR>

    " For CTRL-V to work autoselect must be off.
    " On Unix we have two selections, autoselect can be used.
    if !has("unix")
      set guioptions-=a
    endif

    " CTRL-Z is Undo; not in cmdline though
    noremap <C-Z> u
    inoremap <C-Z> <C-O>u

    " CTRL-Y is Redo (although not repeat); not in cmdline though
    noremap <C-Y> <C-R>
    inoremap <C-Y> <C-O><C-R>

    " Alt-Space is System menu
    if has("gui")
      noremap <M-Space> :simalt ~<CR>
      inoremap <M-Space> <C-O>:simalt ~<CR>
      cnoremap <M-Space> <C-C>:simalt ~<CR>
    endif

    " CTRL-A is Select all
    noremap <C-A> gggH<C-O>G
    inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
    cnoremap <C-A> <C-C>gggH<C-O>G
    onoremap <C-A> <C-C>gggH<C-O>G
    snoremap <C-A> <C-C>gggH<C-O>G
    xnoremap <C-A> <C-C>ggVG

    " CTRL-Tab is Next window
    noremap <C-Tab> <C-W>w
    inoremap <C-Tab> <C-O><C-W>w
    cnoremap <C-Tab> <C-C><C-W>w
    onoremap <C-Tab> <C-C><C-W>w

    " CTRL-F4 is Close window
    noremap <C-F4> <C-W>c
    inoremap <C-F4> <C-O><C-W>c
    cnoremap <C-F4> <C-C><C-W>c
    onoremap <C-F4> <C-C><C-W>c

endif

