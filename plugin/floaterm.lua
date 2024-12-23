local state = {
  window = -1,
  buffer = -1,
}

local function create_window(buffer)
  local width = vim.api.nvim_get_option_value('columns', {})
  local height = vim.api.nvim_get_option_value('lines', {})

  local fw = math.floor(width * 0.8)
  local fh = math.floor(height * 0.8)

  return vim.api.nvim_open_win(buffer, true, {
    relative = 'editor',
    row = math.floor((height - fh) / 2),
    col = math.floor((width - fw) / 2),
    width = fw,
    height = fh,
    style = 'minimal',
    border = 'rounded',
  })
end

local function open_term()
  state.window = create_window(state.buffer)
end

local function create_term()
  state.buffer = vim.api.nvim_create_buf(true, false)
  state.window = create_window(state.buffer)

  vim.cmd.term()

  vim.keymap.set('n', '<esc>', '<cmd>Floaterm<cr>', { buffer = state.buffer })
  vim.keymap.set('t', '<esc>', '<c-\\><c-n>', { buffer = state.buffer })
end

local function toggle()
  if vim.api.nvim_win_is_valid(state.window) then
    vim.api.nvim_win_hide(state.window)
    return
  end

  if vim.api.nvim_buf_is_valid(state.buffer) then
    open_term()
    return
  end

  create_term()
end

vim.api.nvim_create_user_command('Floaterm', toggle, {})
