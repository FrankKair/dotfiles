local M = {}

function M.run_file()
  local ext = vim.fn.expand('%:e')
  local cmd = vim.api.nvim_command

  if ext == 'rs'      then cmd('w ! rustc -o %< % && ./%< && rm %<')
  elseif ext == 'ml'  then cmd('w ! ocamlc -o %< % && ./%< && rm %< %<.cm*')
  elseif ext == 'py'  then cmd('w ! python3')
  elseif ext == 'rb'  then cmd('w ! ruby')
  elseif ext == 'lua' then cmd('w ! lua')
  elseif ext == 'ts'  then cmd('w ! ts-node')
  else print('Unsupported file type, see .config/neovim/lua/runfile.lua')
  end
end

return M
