
module = "xetexref"

uploadconfig = {
  pkg         = module,
  version     = "2019-03-05",
  author      = "Will Robertson",
  license     = "lppl1.3c",
  summary     = "Reference documentation for XeTeX",
  ctanPath    = "/info/xetexref",
  bugtracker  = "https://github.com/wspr/xetexref/issues",
  support     = "http://lists.tug.org/xetex",
  repository  = "https://github.com/wspr/xetexref/",
  description = "This package comprises reference documentation for the XeTeX engine, detailing its extended features.",
  update      = true,
  announcement = "",
}

typesetfiles = {"xetex-reference.tex"}
typesetexe = "xelatex -no-mktex=tfm "

require("l3build-wspr.lua")
