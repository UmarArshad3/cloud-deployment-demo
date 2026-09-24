# AWS EC2 Website Deployment

A simple static website deployed on an AWS EC2 Ubuntu server using Apache HTTP Server.

## Project Overview

This project demonstrates how to deploy a static HTML/CSS website on AWS EC2.

The server runs Ubuntu 24.04 LTS with Apache configured to serve the website over HTTP.

## Technologies Used

- AWS EC2
- Ubuntu 24.04 LTS
- Apache HTTP Server
- HTML5
- CSS3
- Git
- GitHub

## AWS Configuration

### EC2

- Operating System: Ubuntu 24.04 LTS
- Region: Europe (Stockholm)
- Storage: 8 GiB gp3
- Public IPv4 enabled

### Security Group

Inbound traffic is configured for:

| Protocol | Port | Source | Purpose |
|---|---:|---|---|
| SSH | 22 | My IP | Server administration |
| HTTP | 80 | 0.0.0.0/0 | Website access |
| HTTPS | 443 | 0.0.0.0/0 | Reserved for HTTPS |

SSH access is restricted to the administrator's IP address.

HTTP is publicly accessible so visitors can access the website.

## Deployment

### 1. Update Ubuntu

`sudo apt update`

### 2. Install Apache

`sudo apt install apache2 -y`

### 3. Verify Apache

`sudo systemctl status apache2`

### 4. Deploy Website

The website files are copied to Apache's document root:

`sudo cp index.html style.css /var/www/html/`

### 5. Test Apache

`curl http://localhost`

The website can also be accessed through the EC2 public IPv4 address.


## Project Structure

cloud-deployment-demo/
├── index.html
├── style.css
└── README.md

## Testing

The deployment was tested using:

`curl http://localhost`

The website was also successfully accessed from a web browser using the EC2 public IPv4 address.

## Current Status

- EC2 instance running
- Apache installed and running
- Website deployed successfully
- CSS served successfully
- Git repository configured
- Project pushed to GitHub

## Future Improvements

- Configure an Apache Virtual Host
- Connect a custom domain
- Enable HTTPS with TLS
- Add automated deployment
- Containerize the application with Docker
- Add CI/CD using GitHub Actions
