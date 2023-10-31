### Project Title: Web Server (Bash Scripts and Puppet Configuration) 

Table of Contents: 

1. [Introduction](#introduction)
2. [Script Descriptions](#script-descriptions)
    a. [`0-transfer_file`](#0-transfer_file)
    b. [`1-install_nginx_web_server`](#1-install_nginx_web_server)
    c. [`3-redirection`](#3-redirection)
    d. [`4-not_found_page_404`](#4-not_found_page_404)
    e. [`7-puppet_install_nginx_web_server.pp`](#7-puppet_install_nginx_web_serverpp)
3. [Usage and Examples](#usage-and-examples)
4. [Security Considerations](#security-considerations)
5. [Contributions](#contributions) 

--- 

### Project Overview 

This repository contains a set of Bash scripts and a Puppet configuration file to set up an Nginx web server, perform redirection, and create a custom 404 page. These scripts and configurations are designed to meet specific requirements and provide a seamless web server setup. Let's dive into the details of each script and configuration. 

--- 

### Project Descriptions 

#### `0-transfer_file` 

- Purpose: This Bash script transfers a file from a client to a server using `scp`.
- Usage: `./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`
- Parameters:
  - `PATH_TO_FILE`: The path to the file you want to transfer.
  - `IP`: The IP address of the server.
  - `USERNAME`: The username for the SSH connection.
  - `PATH_TO_SSH_KEY`: The path to the SSH private key used for authentication. 

#### `1-install_nginx_web_server` 

- Purpose: This script installs Nginx and configures it to listen on port 80, serving a "Hello World!" page.
- **Usage**: No manual execution needed; it's a self-contained script. 

#### `3-redirection` 

- **Purpose**: This script extends the Nginx configuration to include a server block for redirection. Accessing the `/redirect_me` URL will redirect to a specified page.
- **Usage**: No manual execution needed; it's a self-contained script. 

#### `4-not_found_page_404` 

- Purpose: This script configures Nginx to include a custom 404 error page that displays "Ceci n'est pas une page."
- Usage: No manual execution needed; it's a self-contained script. 

#### `7-puppet_install_nginx_web_server.pp` 

- Purpose: This Puppet configuration file defines a class called `nginx_server` that manages the installation and configuration of the Nginx web server. 

- UsageApply this Puppet configuration to your server to automate the installation and setup of Nginx. 

### Usage and Examples 

- [Example Puppet Usage](#7-puppet_install_nginx_web_serverpp):
  ```bash
  puppet apply 7-puppet_install_nginx_web_server.pp
  ``` 

--- 

### Security Considerations 

🔒 **Security Note**: Ensure that your SSH keys and sensitive information are securely managed and stored. 

--- 

### Acknowledgement 
All thanks to Alx community! 

### Author 
Name: Ginika Elizabeth Nna
Email: elizabethginika9@gmail.com 

### Contributions 

This repository is a useful resource for automating the setup of Nginx, redirection, and custom error pages on your web server. Feel free to modify and expand upon these scripts to meet your specific needs. 

Have fun configuring your web server! 🌐✨ 

---
