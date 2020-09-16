echo off
mkdir EnglishShowsMed
for %%a in ("*.mkv","*.mp4") do ffmpeg -i  "%%a" -vf scale=854:480,setsar=1:1 -c:v libx264 -c:a copy -b:v 700K -r 25 -profile:v High -level 4.0 -c:a libfdk_aac -b:a 128k  -c:a copy "EnglishShowsMed\%%~na.mp4"
pause


