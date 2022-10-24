
local ok, auto_session = pcall(require, 'auto-session')
if not ok then
  return
end

local function close_all_floating_wins()
  local api = vim.api
  for _, win in ipairs(api.nvim_list_wins()) do
    local config = api.nvim_win_get_config(win)
    if config.relative ~= '' then
      vim.api.nvim_win_close(win, false)
    end
  end
end

auto_session.setup {
  log_level = 'info',
  pre_save_cmds = { close_all_floating_wins },
  auto_session_use_git_branch = true
}

