function! ToggleKeymap()
    if &keymap == ""
        set keymap=dvorak
        set imsearch=0
        echom "dvorak"
    elseif &keymap == "dvorak"
        set keymap=
        set iminsert=0
        echom "qwerty"
    endif
endfunction

command! K call ToggleKeymap()
set keymap=dvorak