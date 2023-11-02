local M = {}

---Built-in commands.
M.cmds = {
  grep = { "grep", "-rn" },
	af = { "af" },
	rg = { "rg", "-n" },
}

local _opts = { cmd = M.cmds.af }

---Configure telescope-af.
---@param opts table optional table with the keys:
---{
---  cmd = `table` - command to run, defaults to `telescope_af.cmds.af`
---}
function M.setup(opts)
	if opts then
		_opts = vim.tbl_deep_extend("force", _opts, opts)
	end
end

---@private
---Returns options set by user.
function M._get_opts()
	return vim.fn.deepcopy(_opts)
end

return M
