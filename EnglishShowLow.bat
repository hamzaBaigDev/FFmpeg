echo off
mkdir EnglishShowsLow
for %%a in ("*.mp4","*.mkv") do ffmpeg -i  "%%a"  -vf scale=640:340,setsar=1:1 -c:v libx264 -c:a copy -b:v 300K -r 25  -profile:v High -level 4.0 -c:a libfdk_aac -b:a 128k  -c:a copy "EnglishShowsLow\%%~na.mp4"
pause


