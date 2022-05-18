 #! /bin/bash
sudo apt-get update
sudo apt install python3-venv -y
git clone https://github.com/lokinegalur/flask-weather-apicall
cd flask-weather-apicall/
python3 -m venv venv
source venv/bin/activate
pip install Flask
pip install requests
flask run --host=0.0.0.0 --port=5000
