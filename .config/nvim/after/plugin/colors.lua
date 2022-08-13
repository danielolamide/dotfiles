vim.cmd "colorscheme gotham"
local hl = function (thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end

hl('Normal',{
  bg = 'none',
  ctermbg = 'none',
})

hl('LineNr', {
  bg = 'none',
  ctermbg = 'none',
})

hl('Folded', {
  bg = 'none',
  ctermbg = 'none',
})

hl('NonText', {
  bg = 'none',
  ctermbg = 'none',
})

hl('SpecialKey', {
  bg = 'none',
  ctermbg = 'none',
})

hl('VertSplit', {
  bg = 'none',
  ctermbg = 'none',
})

hl('SignColumn', {
  bg = 'none',
  ctermbg = 'none',
})

hl('EndOfBuffer', {
  bg = 'none',
  ctermbg = 'none',
})
