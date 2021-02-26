## Install Docker
***

<br>
To begin using Ansible as a means of managing your server infrastructure, you need to install the Ansible 
software on the machine that will serve as the Ansible control node.

From your control node, run the following command to include the official project’s 
PPA (personal package archive) in your system’s list of sources:


```
sudo apt-add-repository ppa:ansible/ansible 
```
Press ENTER when prompted to accept the PPA addition.

Next, refresh your system’s package index so that it is aware of the 
packages available in the newly included PPA:

```
sudo apt update
```

Following this update, you can install the Ansible software with:

```
sudo apt install ansible
```