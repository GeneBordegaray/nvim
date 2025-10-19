require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i", "v" }, "kj", "<ESC>", { desc = "Exit to normal mode" })
map("t", "kj", [[<C-\><C-n>]], { desc = "Terminal exit to normal mode" })
map("n", "<leader>fs", function()
  require("telescope.builtin").live_grep {
    grep_open_files = true,
    prompt_title = "Live Grep Open Buffers",
  }
end, { desc = "Live grep open buffers" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
