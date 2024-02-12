command! -nargs=* -complete=shellcmd R enew | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>


