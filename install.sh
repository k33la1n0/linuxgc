#/bin/bash
echo "The Install-List"
echo "+++++++++++++++++++++++++++++++++++"
echo "> ffmpeg"
echo "> v4l2loopback-dkms"
echo "> v4l-utils"
echo "-----------------------------------"
read -p "Are you sure? y for yes | n for no " -n 1 -r
sudo apt install ffmpeg -y
sudo apt install v4l2loopback-dkms -y
sudo apt install v4l-utils -y
echo "-----------------------------------"
echo "Installation completed"
echo ""
sudo chmod +x start.sh
echo "-----------------------------------"
echo "Execute permissions were passed to start.sh"
echo ""
sudo modprobe v4l2loopback video_nr=5 card_label=“vcam”
echo "-----------------------------------"
echo "Virtual webcam number 5 is set up"
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

