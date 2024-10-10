---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = function(_, opts)
    local maps = opts.mappings
    local harpoon = require("harpoon")

    -- Map <Leader>gg to open neogit tab page
    maps.n["<Leader>gg"] = "<Cmd>Neogit<CR>"

    -- Map <Leader>1-4 to select Harpooned buffers
    maps.n["<Leader>1"] = { desc = "Harpoon 1", function() harpoon:list():select(1) end, }
    maps.n["<Leader>2"] = { desc = "Harpoon 2", function() harpoon:list():select(2) end, }
    maps.n["<Leader>3"] = { desc = "Harpoon 3", function() harpoon:list():select(3) end, }
    maps.n["<Leader>4"] = { desc = "Harpoon 4", function() harpoon:list():select(4) end, }

    -- Remap vim-test maps from T to t (ToggleTerm)
    local t = maps.n["<Leader>T"]
    local tf = maps.n["<Leader>Tf"]
    local tn = maps.n["<Leader>Tn"]
    local tv = maps.n["<Leader>Tv"]

    maps.n["<Leader>T"] = maps.n["<Leader>t"]
    maps.n["<Leader>Tf"] = maps.n["<Leader>tf"]
    maps.n["<Leader>Th"] = maps.n["<Leader>th"]
    maps.n["<Leader>Tn"] = maps.n["<Leader>tn"]
    maps.n["<Leader>Tp"] = maps.n["<Leader>tp"]
    maps.n["<Leader>Tv"] = maps.n["<Leader>tv"]

    maps.n["<Leader>t"] = t
    maps.n["<Leader>tf"] = tf
    maps.n["<Leader>tn"] = tn
    maps.n["<Leader>tv"] = tv
    maps.n["<Leader>th"] = nil
    maps.n["<Leader>tp"] = nil
    maps.n["<Leader>tc"] = maps.n["<Leader>Tc"]
    maps.n["<Leader>tl"] = maps.n["<Leader>Tl"]
    maps.n["<Leader>ts"] = maps.n["<Leader>Ts"]

    maps.n["<Leader>Tc"] = nil
    maps.n["<Leader>Tl"] = nil
    maps.n["<Leader>Ts"] = nil
  end,
}
