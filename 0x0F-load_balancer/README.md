# Project Name: Load Balancer Configuration

## Table of Contents
1. [General Info](#general-info)
2. [Project Overview](#project-overview)
3. [Prerequisites](#prerequisites)
4. [Tasks](#tasks)
    - [Task 0: Double the Number of Webservers](#task-0-double-the-number-of-webservers)
    - [Task 1: Install Your Load Balancer](#task-1-install-your-load-balancer)
5. [Usage](#usage)
6. [Acknowledgements](#acknowledgements)

## General Info
This project involves configuring a load balancer and two web servers for improved redundancy and reliability. It includes automating the setup using Bash scripts.

## Project Overview
We will configure web-02 to be identical to web-01 and set up a custom Nginx response header. Then, we will install and configure HAProxy on lb-01 to distribute traffic to web-01 and web-02 using a round-robin algorithm.

## Prerequisites
- Ubuntu 
- Access to the servers mentioned: web-01, web-02, lb-01
- Basic knowledge of Bash scripting

## Tasks
### Task 0: Double the Number of Webservers
- Configure Nginx to add a custom HTTP response header on web-01 and web-02.
- The custom HTTP header will be named X-Served-By, containing the server's hostname.
- Execute the `0-custom_http_response_header` script to configure a new Ubuntu machine to meet the requirements.

### Task 1: Install Your Load Balancer
- Install and configure HAProxy on lb-01.
- Configure HAProxy to send traffic to web-01 and web-02 using a round-robin algorithm.
- Ensure HAProxy can be managed via an init script.
- Make sure your servers are configured with the right hostnames.

## Usage
To execute the tasks, follow the instructions provided in each task's respective script.

## Acknowledgements
Special thanks to Alx community for the invaluable knowledge and technical support.

## Authour

Name: Ginika Elizabeth Nna

Email: elizabethginika9@gmail.com
