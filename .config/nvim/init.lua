-- 别名
--   opt = 选项
--   g   = 全局变量
-- local opt = vim.opt
-- local g = vim.g

-- leader 键设置为空格；<leader>xxx
-- g.mapleader = " "

-- 行号
-- opt.number = true
-- opt.relativenumber = true

-- 剪切板
-- opt.clipboard = "unnamedplus"

-- 缩进
-- opt.expandtab = true   -- Tab 键输入空格
-- opt.shiftwidth = 4     -- 自动缩进
-- opt.tabstop = 4        -- 一个 Tab 显示为 4 列宽
-- opt.softtabstop = 4    -- 编辑时按 Tab 插入 4 个空格
-- opt.smartindent = true -- 自动继承上下文缩进

-- 显示
-- opt.wrap = false
-- opt.termguicolors = true -- 24 位真彩色
-- opt.signcolumn = "yes"   -- 固定符号列

-- 响应速度
-- opt.updatetime = 300  -- 300 ms

require("config.lazy")
