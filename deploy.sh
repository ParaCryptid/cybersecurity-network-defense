#!/bin/bash
echo "Deploying cybersecurity-network-defense..."

# Navigate to the repository directory
cd /var/www/cybersecurity-network-defense

# Pull latest changes
git pull origin main

# Install dependencies (modify as per project needs)
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
elif [ -f "package.json" ]; then
    npm install
fi

# Restart service (modify based on actual setup)
sudo systemctl restart cybersecurity-network-defense.service

echo "cybersecurity-network-defense deployed successfully!"
