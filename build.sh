#!/bin/bash

lualatex -lua=mode.lua --shell-escape "$1.tex"
lualatex -lua=mode.lua --shell-escape "$1.tex"

magick -density 300 "$1.pdf" -quality 90 -background white -flatten "$1.png"
