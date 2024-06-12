local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status_ok then
  return
end

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.ejs = {
  install_info = {
    url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
    files = { "src/node-types.json" },
    requires_generate_from_grammar = true,
  },
  filetype = "ejs",
}
