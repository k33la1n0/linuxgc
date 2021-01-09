#/bin/bash
echo "The Install-List"
echo "----------------------------------------"
echo "!...ffmpeg.............................!"
echo "!...v4l2loopback-dkms..................!"
echo "!...v4l-utils..........................!"
echo "----------------------------------------"
echo ""
echo "Are you sure to install?"
echo "----------------------------------------"
echo "!Yes is number 1 | No is number 2......!"
echo "----------------------------------------"
echo ""
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt install ffmpeg v4l2loopback-dkms v4l-utils -y; break;;
        No ) exit;;
    esac
done
echo "----------------------------------------"
echo "!The install is completed..............!"
echo "----------------------------------------"
echo ""
sudo chmod +x start.sh
echo "----------------------------------------"
echo "!The execute-right is give to start.sh.!"
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
echo "----------------------------------------"
echo "!Yes is number 1 | No is number 2......!"
echo "----------------------------------------"
echo ""
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ./script.sh; break;;
        No ) echo "thank you for using linuxgc - have fun"; exit;;
    esac
done
