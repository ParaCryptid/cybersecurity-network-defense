#!/bin/bash
echo "Installing cybersecurity-network-defense..."

# Move to appropriate directory
sudo mkdir -p /var/www/cybersecurity-network-defense
sudo chown $USER:$USER /var/www/cybersecurity-network-defense
cd /var/www/cybersecurity-network-defense

# Clone the repository
git clone https://github.com/ParaCryptid/cybersecurity-network-defense.git .

# Install dependencies
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
elif [ -f "package.json" ]; then
    npm install
fi

# Create systemd service file
sudo bash -c 'cat <<EOF > /etc/systemd/system/cybersecurity-network-defense.service
[Unit]
Description=cybersecurity-network-defense Service
After=network.target

[Service]
ExecStart=/var/www/cybersecurity-network-defense/start.sh
Restart=always
User=$USER
WorkingDirectory=/var/www/cybersecurity-network-defense

[Install]
WantedBy=multi-user.target
EOF'

# Enable and start service
sudo systemctl enable cybersecurity-network-defense.service
sudo systemctl start cybersecurity-network-defense.service

echo "cybersecurity-network-defense installed and running!"
