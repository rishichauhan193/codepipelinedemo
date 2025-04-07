# #!/bin/bash
# set -e

# echo ">>> Switching to project directory"
# cd /home/ec2-user/server

# echo ">>> Ensuring PM2 is running the backend"
# pm2 delete Frontend || true
# pm2 start server.js --name Frontend

# echo ">>> Deployment script completed successfully."





#!/bin/bash

# Stop the script if any command fails
set -e

echo "Logging in to Amazon ECR..."
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 418295711710.dkr.ecr.ap-south-1.amazonaws.com

# Define your image path from ECR
IMAGE_URI="418295711710.dkr.ecr.ap-south-1.amazonaws.com/my-project-image:latest"

echo "Running the new container..."
docker run -d --name my-app -p 3009:3009 $IMAGE_URI

echo "Deployment complete! Your app should now be running on port 3009."

