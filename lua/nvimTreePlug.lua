local function on_attach(buffnr) 

  local api =require("nvim-tree.api")
  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer= buffnr,
      normap = true,
      silent= true,
      nowait = true
    }

  end


  api.config.mappings.defaul_on_attach(buffnr)

end

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
