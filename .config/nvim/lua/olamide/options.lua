vim.opt.fileencoding="utf-8"
vim.opt.guicursor=""
vim.opt.nu= true
vim.opt.relativenumber=true
vim.opt.shiftwidth=2
vim.opt.tabstop=2
vim.opt.smartindent=true
vim.opt.expandtab=true
vim.opt.mouse='a'
vim.opt.wrap=false
vim.opt.list=true
vim.opt.scrolloff=15
vim.opt.updatetime=100
vim.opt.splitbelow=true
vim.opt.termguicolors=true
vim.opt.completeopt={"menuone", "noselect"}


vim.g.format_on_save = true
vim.cmd('augroup format_on_save')
vim.cmd('autocmd!')
vim.cmd('autocmd BufWritePre * lua vim.lsp.buf.format()')
vim.cmd('augroup END')

function ToggleFormatOnSave()
  if vim.g.format_on_save then
    vim.cmd('augroup format_on_save')
    vim.cmd('autocmd!')
    vim.cmd('augroup END')
    vim.g.format_on_save = false
    print("Automatic formatting before saving is now disabled")
  else
    vim.cmd('augroup format_on_save')
    vim.cmd('autocmd BufWritePre * lua vim.lsp.buf.format({async = false})')
    vim.cmd('augroup END')
    vim.g.format_on_save = true
    print("Automatic formatting before saving is now enabled")
  end
end



vim.cmd('command! ToggleFormatOnSave lua ToggleFormatOnSave()')


