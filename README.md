# Devops and Development Environments

## DevOps

### The hook: Video - Google datacenter
* laugh when people say they've reached the pinnacle
* changed cooling system 5 times
Lesson on what's important?
1. maintenance (cooling/security)
2. continual (incremental) improvements & feedback loop

### DevOps pillars
1. ease-of-use
2. flexibility
3. robustness
4. cost

### Risk register
* risk of occurence vs risk/impact to the company

## Development Environments

* Has all the install software they need e.g. Python
* User friendly, fast, robust

## Install Ruby, Vagrant, and VirtualBox

Things to check:
* If you using Windows, turn on 'Virtual Machine Platform' in Windows Features.
* On Windows, you will also need to install Git Bash.
* You need to switch on 'virtualisation' in your BIOS.

### Install VirtualBox

Check with your trainer which version to install, whether v6.1 or 7.0.

### Install Vagrant

Follow instructions on:

https://developer.hashicorp.com/vagrant/downloads

### Install Ruby

Following instructions on:

https://www.ruby-lang.org/en/documentation/installation/

### Setup Visual Studio Code

1. Install Visual Studio Code
2. Setup these extensions:
   * for Ruby
   * for Markdown
   * for HTML CSS support
   * Jupyter (including Call Tags and Slideshow)


## Getting Vagrant running

vagrant init ubuntu/xenial64

vagrant up

vagrant ssh

ls -a

### Setting up your Vagrant VM

#### Update your Ubuntu (without prompting)
sudo apt-get update -y

#### Install the web server (without prompting)
sudo apt-get install nginx -y

#### Start up the web server
sudo systemctl start nginx

Check it is running:
sudo systemctl status nginx

### Configuring your Vagrantfile

After this line in your Vagrantfile
config.vm.box = "ubuntu/xenial64"
add this line:
config.vm.network "private_network", ip: "192.168.10.100"

Then run this command:
vagrant reload

### Destroying your Vagrant VM

vagrant destroy




Tools used
* app.diagrams.net
