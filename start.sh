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
echo "----------------------------------------"
echo "!Would you like start..................!" 
echo "!webcam-streaming?.....................!"
echo "!......................................!"
echo "!Enter 1 to yes | Enter 2 to no........!"
echo "----------------------------------------"
echo ""
select yn in "yes" "no"; do
    case $yn in
        yes ) ./script.sh; break;;
        no ) exit;;
    esac
done
