#!/bin/bash
set -e

echo ">>> Switching to project directory"
cd /home/ec2-user/server

echo ">>> Ensuring PM2 is running the backend"
pm2 delete Frontend || true
pm2 start server.js --name Frontend

echo ">>> Deployment script completed successfully."