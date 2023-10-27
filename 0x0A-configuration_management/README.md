## Project Title: Configuration Management

## Project Overview

This project focuses on configuration management using Puppet on an Ubuntu 20.04 VM. The goal is to ensure that Puppet manifests adhere to specific standards and perform essential tasks.

## Prerequisites 

- Ubuntu 20.04 VM with Puppet 5.5 preinstalled.
- [puppet-lint](https://puppet.com/docs/puppet/latest/puppet_lint.html)
- [Ruby](https://www.ruby-lang.org/en/) (version 2.7+1)
- [Ruby Augeas](https://rubygems.org/gems/ruby-augeas)
- [Ruby Shadow](https://rubygems.org/gems/ruby-shadow) 

## Puppet Manifest Standards 

1. Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
2. Puppet manifests must run without error.
3. Puppet manifests' first line must be a comment explaining the manifest's purpose.
4. Puppet manifest files must end with the extension `.pp`. 

## Installation 

### Install Puppet 

```bash
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet 

Install puppet-lint 

gem install puppet-lint 

Tasks 

Task 0: Create a File 

Using Puppet, create a file in /tmp with the following requirements: 

• File path: /tmp/school 

• File permission: 0744 

• File owner: www-data 

• File group: www-data 

• File content: "I love Puppet" 

Task 1: Install a Package 

Using Puppet, install Flask from pip3 with version 2.1.0. 

Task 2: Execute a Command 

Using Puppet, create a manifest that kills a process named "killmenow" using the exec Puppet resource and pkill. 

Versioning 

This project uses Puppet 5.5, but the basic syntax should be virtually identical in newer versions of Puppet.

Acknowledgement

Special thanks to ALX community for the invaluable learning scheme and perfect technical support during this career journey. 

Author

Name: Ginika Elizabeth Nna

Email: elizabethginika9@gmail.com
