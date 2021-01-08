#/bin/bash
SOURCE="/dev/video5"

echo "Please select your gif from the list"
echo "+++++++++++++++++++++++++++++++++++"
files=$(ls *.gif)
i=1

for j in $files
do
echo "$i.$j"
file[i]=$j
i=$(( i + 1 ))
done
echo "+++++++++++++++++++++++++++++++++++"
echo "You can close with Strg C"
echo ""
echo "Make sure to disable the webcam"
echo "before selecting a new gif"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Enter a number for your gif:"
read input
echo "+++++++++++++++++++++++++++++++++++"
echo ""
echo "You select the file ${file[$input]}"
echo "-----------------------------------"
echo "Broadcasting"
echo ""
echo "+++++++++++++++++++++++++++++++++++"
ffmpeg -re -stream_loop -1 -i ${file[$input]} -vf format=yuv420p -f v4l2 $SOURCE
echo "+++++++++++++++++++++++++++++++++++"
echo "feel free to restart the script"
echo "----------------------------------"
./start.sh
