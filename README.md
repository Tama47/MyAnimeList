<details>
<summary> https://pastebin.com/mN2VQQ7p </summary>

```
:: Navigate to correct dir (relative to current working dir, i.e where this script was started from
mkdir Anime
cd Anime
:: Download file
curl.exe https://malscraper.azurewebsites.net/covers/anime/Tama47_/presets/dataimagelink -o dataimagelink.css
:: Replace image links in file
powershell -Command "(gc dataimagelink.css) -replace '.webp', 'l.webp' | Out-File -encoding ASCII dataimagelink.css"
powershell -Command "(gc dataimagelink.css) -replace '.jpg', 'l.jpg' | Out-File -encoding ASCII dataimagelink.css"

:: Navigate
cd ..
mkdir Manga
cd Manga
:: Download file
curl.exe https://malscraper.azurewebsites.net/covers/manga/Tama47_/presets/dataimagelink -o dataimagelink.css
:: Replace image links in file
powershell -Command "(gc dataimagelink.css) -replace '.webp', 'l.webp' | Out-File -encoding ASCII dataimagelink.css"
powershell -Command "(gc dataimagelink.css) -replace '.jpg', 'l.jpg' | Out-File -encoding ASCII dataimagelink.css"

:: Git push - I have not tested this part so it probably doesn't work lol. You will also likely have to do some setup with linking to Github and the correct repository, etc.
:: https://docs.gitlab.com/ee/gitlab-basics/start-using-git.html
git commit -am "Automated batch script update"
git push origin main
```

</details>

```
#!/bin/bash

# Set the Downloads directory
downloads_dir="$HOME/Downloads"

# Navigate to Anime directory
anime_dir="$downloads_dir/Anime"
mkdir -p "$anime_dir"
cd "$anime_dir" || exit

# Download file and rename it
curl -o dataimagelink.css https://covers.pages.dev/css/anime_dataimagelink.webp.css

# Replace image links in file
sed -i '' 's/\.webp/l.webp/g' dataimagelink.css
sed -i '' 's/\.jpg/l.webp/g' dataimagelink.css

# Navigate back
cd "$downloads_dir" || exit

# Navigate to Manga directory
manga_dir="$downloads_dir/Manga"
mkdir -p "$manga_dir"
cd "$manga_dir" || exit

# Download file and rename it
curl -o dataimagelink.css https://malscraper.azurewebsites.net/covers/manga/Tama47_/presets/dataimagelink

# Replace image links in file
sed -i '' 's/\.webp/l.webp/g' dataimagelink.css
sed -i '' 's/\.jpg/l.webp/g' dataimagelink.css
```
