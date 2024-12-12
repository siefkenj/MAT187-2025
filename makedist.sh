#!/bin/bash

cd slides
# Make version of the book
latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" mat187-white &
#latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" odes-book &
#latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" odes-solutions &
#latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" odes-instructor &
#latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" odes-slides &
#latexmk -lualatex -latexoption="-interaction nonstopmode -halt-on-error -file-line-error" odes-white &

# We process all the latex files in parallel and wait for them to finish
wait $(jobs -p)

cp mat187*.pdf ../dist/
