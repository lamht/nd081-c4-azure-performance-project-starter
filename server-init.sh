sudo apt update -y
sudo apt install python3.7
python3 --version
sudo -H pip3 install --upgrade pip

cd ..

wget https://download.redis.io/releases/redis-6.2.4.tar.gz
tar xzf redis-6.2.4.tar.gz
cd redis-6.2.4
make
# Ping your Redis server to verify if it is running. It will return "PONG"
redis-cli ping
# The server will start after make. Otherwise, use
src/redis-server

cd ..
cd nd081-c4-azure-performance-project-starter
pip install -r requirements.txt
cd azure-vote/
python3 main.py