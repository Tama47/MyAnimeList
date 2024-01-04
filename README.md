https://pastebin.com/mN2VQQ7p

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
