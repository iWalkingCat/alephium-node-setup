sudo apt update -y && sudo apt upgrade -y
sudo apt install vim tmux git curl 

# Install Docker Engine and Docker Compose plugin:
bash install-docker-and-compose.sh

# Clone Alephium node to "/home/<user>/alephium-stack":
git clone https://github.com/alephium/alephium-stack.git /home/$(whoami)/alephium-stack

# Start Alephium node:
cd /home/$(whoami)/alephium-stack/devnet
docker-compose up -d
