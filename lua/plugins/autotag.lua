return {
    "windwp/nvim-ts-autotag",
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
    },
    config = function(_, opts)
        require('nvim-ts-autotag').setup({
            autotag = {
                enable = true,
                enable_close = opts.enable_close,
                enable_rename = opts.enable_rename,
                enable_close_on_slash = opts.enable_close_on_slash,
            },
            filetypes = {
                'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx',
                'rescript',
                'xml',
                'php',
                'markdown',
                'astro', 'glimmer', 'handlebars', 'hbs'
            },
            skip_tags = {
                'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
                'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr', 'menuitem'
            },
        })
    end,
}
