IFS=$'\n'
for file in $(find . -name "*.ogg")
do
  ffmpeg -i $file ${file%.*}.mp3
done
unset IFS
