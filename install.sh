# Install Prerequisites 
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt upgrade -y


sudo apt install docker -y
sudo apt install docker-compose -y
sudo systemctl enable docker

# Download and run sample docker compose file
wget https://raw.githubusercontent.com/davidjsam/openmrs-distro-referenceapplication/main/docker-compose.yml
sudo docker-compose up -d
