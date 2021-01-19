#bin/bash
echo "----------------------------------------"
echo "!For set up vcam - you need sudo.......!" 
echo "----------------------------------------"
echo ""
sudo modprobe v4l2loopback video_nr=5 card_label=“vcam”
echo "----------------------------------------"
echo "Perfect - vcam is set up...............!"
echo "----------------------------------------"
echo ""
echo "Would you like start" 
echo "webcam-streaming?"
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|j|ja|J|1)
        ./script.sh;;
    n|no|N|nein|2)
        echo " > thank you for using linuxgc :)"; exit;;
esac
