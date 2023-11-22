require('rose-pine').setup({
    disable_background = false,
    variant = 'auto',
    dark_variant = 'moon'
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

function SyncColor()
    local home = vim.fn.expand('$HOME')
    local script = home .. '/.config/nvim/scripts/my_get_colors.sh'
    local obj = vim.system({script}, {text = true}):wait()

    if obj.stdout ~= nil and obj.stdout == "dark" then
        vim.cmd.colorscheme("catppuccin")
    else
        vim.cmd.colorscheme("acme")
    end
end

SyncColor()
