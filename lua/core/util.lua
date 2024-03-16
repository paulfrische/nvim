local M = {}

M.guess_indent = function(buf)
  local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)

  local differences = {}
  for i = 2, #lines do
    local difference = string.find(lines[i], '[^ ]') - string.find(lines[i - 1], '[^ ]')
    if difference > 0 then
      if differences[difference] == nil then
        differences[difference] = 1
      else
        differences[difference] = differences[difference] + 1
      end
    end
  end

  local max_diff = 0
  local width = 0
  for key, value in pairs(differences) do
    if value > max_diff then
      max_diff = value
      width = key
    end
  end

  return width
end

return M
