vim.cmd [[
try
  colorscheme nordic
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
