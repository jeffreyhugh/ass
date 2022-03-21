#!/bin/bash

# made with copilot

# usage: ./archive.sh <tag> <file> (optional file) (optional file)...

# make sure the correct number of arguments were passed
if [ $# -lt 2 ]; then
    echo "usage: ./archive.sh <tag> <file> (optional file) (optional file)... "
    exit 1
fi

destination=""
if [[ -z "$MEME_FOLDER" ]]; then
    echo "MEME_FOLDER is not set; defaulting to ~/memes"
    destination="$HOME/memes"
else
    destination="$MEME_FOLDER"
fi

# make sure the destination exists
mkdir -p "$destination"

# copy the file to the destination
# rename it to tag-NN.ext, where NN is the number of files with the tag in the destination and ext is the extension of the file
# if the file already exists, increment NN until it doesn't
# if the file doesn't exist, NN is 01
# pad NN to two digits with leading zeros
# do this for each file passed as an argument (only arguments index 2 and above)
for i in $(seq 2 $#); do
    file="${!i}"
    cp "$file" "$destination/$1-$(printf "%02d" $(ls -1 "$destination/$1"* 2>/dev/null | wc -l) ).$(basename "$file" | sed 's/^.*\.//')"
done

# single file version (old)
# cp "$1" "$destination/$2-$(printf "%02d" $(ls -1 "$destination/$2"* 2>/dev/null | wc -l) ).$(basename "$1" | sed 's/^.*\.//')"

exit 0
