--  local config = {
--      cmd = {'/home/robert/jdt/bin/jdtls'},
--  	    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
--  }
--
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local workspace_dir = os.getenv('XDG_STATE_HOME') .. '/nvim-jdtls/workspace/' .. project_name
--local workspace_dir = '/home/robert/workspace' .. project_name

-- vim.g.lol = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})

-- local cmd = {
--     "/usr/bin/java",
--     "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--     "-Dosgi.bundles.defaultStartLevel=4",
--     "-Declipse.product=org.eclipse.jdt.ls.core.product",
--     "-noverify",
--     "-Xms1G",
--     "-jar",
--     "/home/robert/jdt/plugins/org.eclipse.equinox.launcher.gtk.linux.x86_64_1.2.400.v20211117-0650.jar",
--     "-configuration",
--     "/home/robert/jdt/config_linux",
--     "-data",
--     workspace_dir
-- }

-- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
local nmap = function(keys, func, desc)
if desc then
desc = 'LSP: ' .. desc
end

vim.keymap.set('n', keys, func, { desc = desc })
end

nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

-- See `:help K` for why this keymap
nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

-- Lesser used LSP functionality
nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
nmap('<leader>wl', function()
print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, '[W]orkspace [L]ist Folders')

-- Create a command `:Format` local to the LSP buffer
-- vim.api.nvim_buf_create_user_command('Format', function(_)
-- 	vim.lsp.buf.format()
-- end, { desc = 'Format current buffer with LSP' })

require('jdtls').start_or_attach({
	cmd={'/home/robert/jdt/bin/jdtls', '-data', workspace_dir}
	-- settings= {
	-- 	java = {
	-- 		home = os.getenv("JAVA_HOME"),
	-- 		configuration = {
	-- 			runtimes = {
	-- 				name="java17",
	-- 				path = os.getenv("JAVA_HOME")

	-- 			}
	-- 		}
	-- 	}
	-- }
})

