#/bin/bash
echo "The Install-List"
echo "+++++++++++++++++++++++++++++++++++"
echo "> ffmpeg"
echo "> v4l2loopback-dkms"
echo "> v4l-utils"
echo "-----------------------------------"
read -p "Are you sure? " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
sudo apt install ffmpeg -y
sudo apt install v4l2loopback-dkms -y
sudo apt install v4l-utils -y
fi
echo ""
echo "-----------------------------------"
read -p "Would you like install a virtual webcam? " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
sudo chmod +x start.sh
sudo modprobe v4l2loopback video_nr=5 card_label=“vcam”
echo ""
echo "-----------------------------------"
echo "Your Virtual Cam is named as vcam"
echo ""
echo "It is recommended to use Firefox for"
echo "streaming gif's over your virtual cam"
echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Thank you for install und use, have fun"
echo ""
echo "Now you can start your vcam and gif-streaming"
echo "with ./start.sh"
fi
echo ""
echo "-----------------------------------"
echo "Your Virtual Cam is named as vcam"
echo ""
echo "It is recommended to use Firefox for"
echo "streaming gif's over your virtual cam"
echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Thank you for install und use, have fun"
echo ""
echo "Now you can start your vcam and gif-streaming"
echo "with ./start.sh"
echo "+++++++++++++++++++++++++++++++++++"

