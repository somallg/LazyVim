local M = {}

local function get_code_block_at_cursor()
  local ts_utils = require("nvim-treesitter.ts_utils")

  if vim.bo.filetype ~= "markdown" then
    return
  end

  local code_block_node = ts_utils.get_node_at_cursor()

  while code_block_node and code_block_node:type() ~= "program" do
    code_block_node = code_block_node:parent()
  end

  if code_block_node == nil then
    return
  end

  return vim.treesitter.get_node_text(code_block_node, vim.fn.bufnr("%"))
end

local function send_to_terminal(cmd)
  local terminal = Snacks.terminal.get(nil, { cwd = LazyVim.root(), win = { position = "right" } })

  if terminal == nil then
    print("No terminal found")
    return
  end

  local job_ib = vim.b[terminal.buf].terminal_job_id
  vim.fn.chansend(job_ib, cmd .. "\n")
end

function M.exec_code_block_at_cursor()
  local code_block = get_code_block_at_cursor()

  if code_block == nil then
    print("No code found at cursor")
    return
  end

  send_to_terminal(code_block)
end

return M
