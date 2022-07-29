-- This file can be loaded by calling `lua required('plugings')` from your init.vim
-- Only required if you have packer configured as `opt`
-- vim.cmd [[runtime plugin/azul.vim]] not sure what this does

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)


