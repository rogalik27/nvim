return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        scroll = {
            enabled = true
        },
        dim = {
            enabled = true
        },
        input = {
            enabled = true
        },
        bigfile = {
            enabled = true
        },
        notifier = {
            enabled = false
        },
        quickfile = {
            enabled = true
        },
        statuscolumn = {
            enabled = true
        },
        words = {
            enabled = true
        },
        dashboard = {
            enabled = true,
            preset = {
--     header = [[
-- ███╗   ███╗ █████╗ ██████╗  ██████╗███████╗██╗     
-- ████╗ ████║██╔══██╗██╔══██╗██╔════╝██╔════╝██║   🥹
-- ██╔████╔██║███████║██████╔╝██║     █████╗  ██║ ♥️  
-- ██║╚██╔╝██║██╔══██║██╔══██╗██║     ██╔══╝  ██║     
-- ██║ ╚═╝ ██║██║  ██║██║  ██║╚██████╗███████╗███████╗
-- ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝╚══════╝]],
    header = [[
███╗   ██╗███████╗████████╗██╗    ██╗ █████╗ ██╗   ██╗███████╗
████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔══██╗╚██╗ ██╔╝██╔════╝
██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║███████║ ╚████╔╝ ███████╗
██║╚██╗██║██╔══╝     ██║   ██║███╗██║██╔══██║  ╚██╔╝  ╚════██║
██║ ╚████║███████╗   ██║   ╚███╔███╔╝██║  ██║   ██║   ███████║
╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝]],
--     header = [[
-- ██████╗ ██╗███████╗██████╗ ███████╗ ██████╗
-- ██╔══██╗██║╚══███╔╝██╔══██╗██╔════╝██╔════╝
-- ██████╔╝██║  ███╔╝ ██║  ██║█████╗  ██║     
-- ██╔═══╝ ██║ ███╔╝  ██║  ██║██╔══╝  ██║     
-- ██║     ██║███████╗██████╔╝███████╗╚██████╗
-- ╚═╝     ╚═╝╚══════╝╚═════╝ ╚══════╝ ╚═════╝]],
        },
            sections = {
                {
                    section = "terminal",
                    cmd = "chafa ~/.config/nvim/pupsik.jpg --format symbols --symbols vhalf --size 60x17 --stretch; sleep .1",
                    height = 17,
                    padding = 5,
                    -- pane = 2,
                    -- section = "terminal",
                    -- cmd = "colorscript -e square",
                    -- height = 5,
                    -- padding = 1,
                },
                { section = "header"},
                { section = "startup", padding = 5},
                { section = "keys", gap = 1, padding = 10 },
                {
                    section = "terminal",
                    cmd = "fortune -a -n 80 -s | fmt -20 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2))",
                    random = 10,
                    height = 20,
                    padding = 5,
                    pane = 2,
                    -- section = "terminal",
                    -- cmd = "colorscript -e square",
                    -- height = 5,
                    -- padding = 1,
                },
                -- { title = " ", pane = 2, padding = 20},
                { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", limit = 8, indent = 2, padding = 5, gap = 1},
                { pane = 2, icon = " ", title = "Projects", section = "projects", limit = 8, indent = 2, padding = 1, gap = 1 },
            }
        }
    },
    keys = {
        { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" },
        { "<leader>gB", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
        { "<leader>.", function() Snacks.scratch() end, desc = "Select Scratch Buffer" }
    }
}
