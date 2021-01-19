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
echo "would you use your vcam on bbb (b), jitsi (j) or zoom (z)?"
read -n 1 -p "" ans;
case $ans in
    b|bbb|B|1)
        ffmpeg -re -stream_loop -1 -i ${file[$input]} -vf "format=yuv420p" -f v4l2 $SOURCE;;
    j|jitsi|J|2)
        ffmpeg -re -stream_loop -1 -i ${file[$input]} -vf "hflip,format=yuv420p" -f v4l2 $SOURCE;;
    z|zoom|Z|3)
        ffmpeg -re -stream_loop -1 -i ${file[$input]} -vf "format=yuv420p" -f v4l2 $SOURCE;;
esac
echo "----------------------------------------"
echo "!feel free to restart the script.......!"
echo "----------------------------------------"
echo ""
./script.sh
