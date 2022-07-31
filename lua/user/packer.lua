-- This file can be loaded by calling `lua required('plugings')` from your init.vim
-- Only required if you have packer configured as `opt`
-- vim.cmd [[runtime plugin/azul.vim]] not sure what this does

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use('folke/tokyonight.nvim')
    use('EdenEast/nightfox.nvim')
    use('bluz71/vim-moonfly-colors')
    use('rockerBOO/boo-colorscheme-nvim')
    use {
        'meliora-theme/neovim',
        requires = {'rktjmp/lush.nvim'}
    }
    use {'neoclide/coc.nvim', branch = 'release'}
end)


