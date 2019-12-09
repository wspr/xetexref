--[[
     =======================
     BUILD FILE FOR XETEXREF
     =======================
--]]

module = "xetexref"

uploadconfig = {
  pkg         = module,
  version     = "2019-12-09",
  author      = "Will Robertson",
  license     = "lppl1.3c",
  summary     = "Reference documentation for XeTeX",
  ctanPath    = "/info/xetexref",
  support     = "http://lists.tug.org/xetex",
  repository  = "https://github.com/wspr/xetexref/",
  bugtracker  = "https://github.com/wspr/xetexref/issues",
}

uploadconfig.description = [[
  This package comprises reference documentation for the XeTeX engine,
  detailing its extended features.
]]

local function prequire(m) -- from: https://stackoverflow.com/a/17878208
  local ok, err = pcall(require, m)
  if not ok then return nil, err end
  return err
end
prequire("l3build-wspr.lua")

typesetfiles = {"xetex-reference.tex"}
typesetexe   = "xelatex -no-mktex=tfm"
typesetcmds  = "\\\\def\\\\VERSION{"..uploadconfig.version.."}"
