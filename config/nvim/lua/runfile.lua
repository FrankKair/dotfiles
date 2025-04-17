local M = {}

local runners = {
  rs  = "rustc -o %< % && ./%< && rm %<",
  ml  = "ocamlc -o %< % && ./%< && rm %< %<.cm*",
  c   = "clang -o %< % && ./%< && rm %<",
  py  = "python3 %",
  rb  = "ruby %",
  lua = "lua %",
  ts  = "ts-node %",
  sh  = "sh %"
}

function M.run_file()
  local ext = vim.fn.expand('%:e')
  local cmd = runners[ext]

  if cmd then
    vim.cmd('write')
    vim.cmd('!' .. cmd)
  else
    vim.notify('Unsupported file type: ' .. ext .. '\nSee ~/.config/nvim/lua/runfile.lua', vim.log.levels.WARN)
  end
end

return M
