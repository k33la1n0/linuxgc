#/bin/bash
echo "The Install-List"
echo "----------------------------------------"
echo "!...ffmpeg.............................!"
echo "!...v4l2loopback-dkms..................!"
echo "!...v4l-utils..........................!"
echo "----------------------------------------"
echo ""
echo "Are you sure to install?"
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|j|ja|J|1)
        sudo apt install ffmpeg v4l2loopback-dkms v4l-utils -y;;
    n|no|N|nein|2)
        echo " > thank you for using linuxgc :)"; exit;;
esac
echo "----------------------------------------"
echo "!The install is completed..............!"
echo "----------------------------------------"
echo ""
sudo chmod +x start.sh
echo "----------------------------------------"
echo "!The execute-right is give to start.sh.!"
echo "----------------------------------------"
echo ""
sudo chmod +x script.sh
echo "----------------------------------------"
echo "!The execute-right is give to script.sh!"
echo "----------------------------------------"
echo ""
sudo modprobe v4l2loopback video_nr=5 card_label=“vcam”
echo "----------------------------------------"
echo "!The vcam is now set up................!"
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "!INFO..................................!"
echo "!It is recommended to use Firefox for..!"
echo "!streaming gif's over your virtual cam.!"
echo "----------------------------------------"
echo ""
echo "Would you like start"
echo "streaming gif's with vcam?"
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|j|ja|J|1)
        ./script.sh;;
    n|no|N|nein|2)
        echo " > thank you for using linuxgc :)"; exit;;
esac
