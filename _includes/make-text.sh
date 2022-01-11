#!/bin/bash

for filename in extras/cs-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure.lua --to markdown > ./"$(basename "$filename")"
done

for filename in extras/bio-*.md; do
   [ -e "$filename" ] || continue
   pandoc "$filename" --lua-filter=figure.lua --to markdown > ./"$(basename "$filename")"
done