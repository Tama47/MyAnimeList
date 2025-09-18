#!/bin/bash
set -e

# Directories inside the repo
anime_dir="./Anime"
manga_dir="./Manga"

mkdir -p "$anime_dir" "$manga_dir"

# === Anime ===
curl -s -o "$anime_dir/dataimagelink.css" https://covers.pages.dev/css/anime_dataimagelink.webp.css
sed -i 's/\.webp/l.webp/g' "$anime_dir/dataimagelink.css"
sed -i 's/\.jpg/l.webp/g' "$anime_dir/dataimagelink.css"

# === Manga ===
curl -s -o "$manga_dir/dataimagelink.css" https://covers.pages.dev/css/manga_dataimagelink.webp.css
sed -i 's/\.webp/l.webp/g' "$manga_dir/dataimagelink.css"
sed -i 's/\.jpg/l.webp/g' "$manga_dir/dataimagelink.css"