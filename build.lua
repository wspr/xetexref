
metadata = {
  pkg         = "xetexref",
  version     = "2018-12-07",
  author      = "Will Robertson",
  license     = "lppl1.3c",
  summary     = "Reference documentation for XeTeX",
  ctanPath    = "/info/xetexref",
  bugtracker  = "https://github.com/wspr/xetexref/issues",
  support     = "http://lists.tug.org/xetex",
  repository  = "https://github.com/wspr/xetexref/",
  description = "This package comprises reference documentation for the XeTeX engine, detailing its extended features.",
  update      = true,
}

module = metadata.pkg
typesetfiles = {"xetex-reference.tex"}
typesetexe = "xelatex -no-mktex=tfm "

ctandata = metadata
require("l3build-wspr.lua")
ctanupload = true
