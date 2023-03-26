local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status, then
  return
end

-- load friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

-- completeopt's default values are "menu,preview"
vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.present.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
  })
})
