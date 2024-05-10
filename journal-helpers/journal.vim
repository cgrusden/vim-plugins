" what to put in ~/.vimrc 
" BEGIN
"
" Define a mapping to trigger the journal entry insertion in Markdown files
" autocmd FileType markdown nnoremap <buffer> <Leader>n :call InsertJournalEntry()<CR>
"
" END
"
" Create a new journal entry with current date and time
function! InsertJournalEntry()
    " Get current date and time in the desired format
    let date = strftime("%b %d, %Y")
    let time = strftime("%H:%M")

    " Insert new line at the beginning of the file with the date and time
    call append(0, date . " " . time)
    " Move cursor to the beginning of the newly inserted line
    normal! gg
    " Open a new line for the journal entry
    normal! o
    " Insert an extra newline
    normal! o
    " Enter insert mode to start typing the journal entry
    startinsert!
endfunction

" Define a command to trigger the journal entry insertion
command! JournalEntry call InsertJournalEntry()

