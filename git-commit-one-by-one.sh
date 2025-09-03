#!/bin/bash

# වෙනස් කරපු files (modified, added, deleted) ඔක්කොම හොයාගන්නවා
files=$(git status --porcelain | awk '{print $2}')

# හොයාගත්ත හැම file එකක්ම වෙන වෙනම commit කරන්න loop එකක් දානවා
for file in $files; do
    echo "Committing file: $file"
    git add "$file"
    git commit -m "Update: $file"
done

echo "all files commited."