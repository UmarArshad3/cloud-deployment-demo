#!/bin/bash

set -e

echo "Deploying website..."

sudo cp index.html style.css /var/www/cloud-deployment-demo/public/

sudo systemctl reload apache2

echo "Deployment completed successfully."
