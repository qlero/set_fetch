#!/bin/bash

for file in *.webm;
do
f=$(echo "$file" | cut -f 1 -d "."); ffmpeg -i "$file" -crf 0 "$f.mp4"
done

