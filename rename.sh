#!/bin/bash
echo "===== File Renamer ====="
echo "Target folder: /data"
echo ""

TODAY=$(date +%Y-%m-%d)

for file in /data/*; do
    filename=$(basename "$file")
    if [[ "$filename" != "$TODAY"_* ]]; then
        mv "$file" "/data/${TODAY}_${filename}"
        echo "Renamed: $filename -> ${TODAY}_${filename}"
    fi
done

echo ""
echo "===== Done ====="