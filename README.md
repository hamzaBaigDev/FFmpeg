# FFmpeg
It is ffmpeg encode query
echo off
mkdir EnglishShowsHigh
for %%a in ("*.mkv","*.mp4") do ffmpeg -i  "%%a" -vf scale=1280:720,setsar=1:1 -c:v libx264 -c:a copy -b:v 1500K -r 25 -profile:v High -level 4.0 -c:a libfdk_aac -b:a 128k  -c:a copy "EnglishShowsHigh\%%~na.mp4"
pause



Create directory
For Loop
input video or audio
Change Resolution 1280x720
Video Bitrate
FramwRate
Profile
Level
Audio Library
Audio Bitrate
