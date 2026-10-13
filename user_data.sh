#!/bin/bash
# Update system packages
dnf update -y

# Install Apache HTTP Server
dnf install -y httpd

# Start Apache and enable on boot
systemctl start httpd
systemctl enable httpd

# Create simple landing page
echo "<h1>Welcome to My AWS Linux Web Server</h1><p>Deployed via EC2 and VPC</p>" > /var/www/html/index.html
