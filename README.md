# Automated AWS EC2 Linux Web Infrastructure

## Overview
This project demonstrates the deployment of a secure, highly available Linux web server hosted on Amazon Web Services (AWS) within a custom Virtual Private Cloud (VPC).

## Architecture & Features
* **Cloud Provider:** Amazon Web Services (AWS)
* **Compute:** AWS EC2 (`t3.micro` instance running Amazon Linux 2023)
* **Networking:** Custom VPC, Public Subnet, and Internet Gateway (IGW)
* **Security:** Security Group inbound rules allowing HTTP (Port 80) and restricted SSH (Port 22) access
* **Automation:** Automated Apache (httpd) web server installation using Bash User Data scripts

## Deployment Steps
1. Created a custom VPC (`10.0.0.0/16`) with an attached Internet Gateway and public subnet routing.
2. Configured Security Group ingress rules to allow public HTTP traffic and restricted SSH access.
3. Launched an EC2 Linux instance executing the `user_data.sh` startup script.
4. Verified web application accessibility via public IPv4 address.
