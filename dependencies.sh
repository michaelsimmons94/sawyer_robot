#!/bin/bash
sudo apt-get install ros-kinetic-tf2-sensor-msgs
sudo apt-get install python-imaging python-imaging-tk 
sudo -H pip install pyscreenshot 
sudo -H pip install SpeechRecognition
sudo -H pip install python-Levenshtein 
git clone https://github.com/michaelsimmons94/sawyer_install.git
cd sawyer_install/
sudo bash kinect_install.sh
cd ..
rm -rf sawyer_install 
sudo apt install sox
sudo apt install libsox-fmt-mp3
pip install jellyfish
pip install SpeechRecognition

