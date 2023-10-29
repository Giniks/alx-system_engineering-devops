## Project 0x0B: SSH 

## Table of Contents
1. [Overview](#overview)
2. [Learning Objectives](#learning-objectives)
3. [Project Tasks](#project-tasks)
   - [Task 0: Use a private key](#task-0-use-a-private-key)
   - [Task 1: Create an SSH key pair](#task-1-create-an-ssh-key-pair)
   - [Task 2: Client configuration file](#task-2-client-configuration-file)
   - [Task 3: Let me in!](#task-3-let-me-in)
4. [Directory Structure](#directory-structure)
5. [Usage](#usage)
6. [Author](#author)
7. [Project Schedule](#project-schedule)
8. [Additional Resources](#additional-resources) 

## Project Overview
This project explores the fundamentals of SSH (Secure Shell) and its applications. It covers various aspects of SSH, from understanding what a server is to configuring SSH for secure connections. 

## Learning Objectives
By the end of this project, you should be able to:
- Explain what a server is and where servers are typically located.
- Understand the concept of SSH and its role in secure communication.
- Create an SSH RSA key pair and configure it with optional passphrases.
- Configure the SSH client to use specific keys and refuse password authentication.
- Explore the benefits of using `#!/usr/bin/env bash` over hard-coding the `bash` path. 

## Project Tasks 

### Task 0: Use a private key
Write a Bash script that connects to a server using the private key `~/.ssh/school` with the user `ubuntu`. 

### Task 1: Create an SSH key pair
Write a Bash script that generates an RSA key pair with specific requirements. 

### Task 2: Client configuration file
Configure the local SSH client to use the private key `~/.ssh/school` and refuse password authentication. 

### Task 3: Let me in!
Add an SSH public key to your server for connection using the `ubuntu` user. 

## Directory Structure
- `0x0B-ssh/`: Main project directory.
  - `0-use_a_private_key`: Script for Task 0.
  - `1-create_ssh_key_pair`: Script for Task 1.
  - `2-ssh_config`: SSH client configuration file for Task 2.
  - `README.md`: Project README file. 

## Usage
To use the provided scripts, follow the instructions in each task's description. 

## Author
- Name:  Ginika Elizabeth Nna
- Email: elizabethginika9@gmail.com 

## Project Schedule
- Start Date: Oct 27, 2023 6:00 AM
- End Date: Oct 30, 2023 6:00 AM 

## Acknowledgement
- All thanks to Alx community for their invaluable knowledge and technical support.
