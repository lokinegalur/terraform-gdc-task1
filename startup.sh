#!/bin/bash
apt-get update
apt install -y git
sudo apt install python3-venv -y
export HOME=/root
git clone https://github.com/lokinegalur/flask-weather-apicall /opt/app
cd /opt/app
python3 -m venv venv
source venv/bin/activate
pip install Flask
pip install requests
flask run --host=0.0.0.0 --port=5000 >> log.txt 2>&1 &
