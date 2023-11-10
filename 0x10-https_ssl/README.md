# HTTPS SSL Termination with HAProxy

## Project Title: HTTPS SSL Termination with HAProxy

This project demonstrates how to configure HAProxy for HTTPS SSL termination, ensuring encrypted communication between clients and web servers. Additionally, it includes a Bash script to display information about subdomains.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Bash Script](#bash-script)
- [Acknowledgements](#acknowledgements)
- [Author](#author)

## Introduction

SSL termination is a critical step in securing web traffic. This project focuses on configuring HAProxy to handle HTTPS SSL termination, ensuring encrypted communication between clients and web servers. Additionally, it provides a Bash script to display information about specified subdomains.

## Prerequisites

Before starting the configuration, ensure you have the following:

- [HAProxy](http://www.haproxy.org/) installed (version 1.5 or higher)
- [Certbot](https://certbot.eff.org/) for obtaining SSL certificates

## Installation

1. Install HAProxy:

   ```bash
   sudo apt-get update
   sudo apt-get install haproxy
   ```

2. Install Certbot:

   ```bash
   sudo apt-get install certbot
   ```

3. Obtain SSL certificate:

   ```bash
   sudo certbot certonly --standalone -d www.yourdomain.com
   ```

## Configuration

Edit the HAProxy configuration file (`1-haproxy_ssl_termination`) and configure SSL termination:

```plaintext
# Your HAProxy configuration content goes here
# ...
```

Ensure to replace placeholders with your actual domain and file paths.

After configuring, restart HAProxy:

```bash
sudo service haproxy restart
```

## Bash Script

The project includes a Bash script (`0-world_wide_web`) to display information about subdomains. The script accepts two arguments: domain and subdomain (optional). When only the domain parameter is provided, it displays information for the subdomains www, lb-01, web-01, and web-02.

```bash
./0-world_wide_web yourdomain.com
```

```bash
./0-world_wide_web yourdomain.com web-02
```

## Acknowledgements

Special thanks to the ALX community for their support and guidance.

## Author

- Name: Ginika Elizabeth Nna
- Email: elizabethginika9@gmail.com
```
