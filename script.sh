#/bin/bash
SOURCE="/dev/video5"
echo "----------------------------------------"
echo "!Please select your gif from the list..!"
echo "----------------------------------------"
echo ""
files=$(ls *.gif)
i=1

for j in $files
do
echo "$i.$j"
file[i]=$j
i=$(( i + 1 ))
done
echo "----------------------------------------"
echo "!Exit with.............................!"
echo "! >> Strg c << BEFORE..................!"
echo "!you enter a number....................!"
echo "!......................................!"
echo "!Restart wit...........................!"
echo "! >> Strg c << AFTER...................!"
echo "!you enter a number....................!"
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "!Make sure to disable the webcam.......!"
echo "!before selecting a new gif............!"
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "!Type in the number of the gif.........!"
echo "----------------------------------------"
echo ""
read input
echo "----------------------------------------"
echo "!You select the gif....................!" 
echo ">> ${file[$input]} <<"
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "!Broadcasting..........................!"
echo "----------------------------------------"
echo ""
ffmpeg -re -stream_loop -1 -i ${file[$input]} -vf "hflip,format=yuv420p" -f v4l2 $SOURCE
echo "----------------------------------------"
echo "!feel free to restart the script.......!"
echo "----------------------------------------"
echo ""
./script.sh
