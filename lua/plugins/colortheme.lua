return { 
    'datsfilipe/vesper.nvim', 
    priority = 1000,
    config=function() 
        require('vesper').setup({
            transparent = false,
            italics = {
                comments = false,
                keywords = false,
                functions = false,
                strings = false,
                variables = false,
            },
            overrides = {},
            pallete_overrides = {}
        });
        vim.cmd("colorscheme vesper");
    end,
}
