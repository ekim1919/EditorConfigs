function! myspacevim#before() abort
 
endfunction

function! myspacevim#after() abort
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'skim'

    set conceallevel=1
    let g:tex_conceal='abdmg'

    " Rebind Escape key.
    "inoremap jj <Esc>
 
    nnoremap q b
    nnoremap r $

    "Swap Easymotion Jump bindings
    nmap [SPC]jj <Plug>(easymotion-overwin-f2)
    nmap [SPC]jJ <Plug>(easymotion-sn)
    omap [SPC]jJ <Plug>(easymotion-tn)
    nmap [SPC]jm <Plug>(easymotion-sl)
    
    " Rebind line delete key binding.
    nmap <c-d> dd
    imap <c-d> <esc>ddi
     
    " Bind moving lines down one place.
    imap <c-CR> ddp

endfunction


