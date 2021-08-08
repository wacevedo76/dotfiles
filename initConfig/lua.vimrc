lua << EOF
  require'lspconfig'.pyright.setup{}
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
  require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF
