## Procedures of setting up debian for developers



1. Add current user to the sudoers
* Add current user id to /etc/sudoers, you can get the id with:
```bash
$ echo `whoami` "ALL=(ALL) NOPASSWD:ALL"
```
    Or you can execute this script:
```bash
$ ./addCurrentUserToSudoers.sh
```
1. Install open-vm-tools-desktop
```bash
$ sudo apt install open-vm-tools-desktop
```

1. Install Visual Studio Code
* Download it [here](https://code.visualstudio.com/docs/?dv=linux64_deb)
* Install downloaded .deb
```bash
sudo apt install {downloaded file}.deb
```

1. Install git
```bash
$ sudo apt install git
```

1. Install hub
```bash
sudo add-apt-repository ppa:cpick/hub
sudo apt-get update
sudo apt-get install hub
```
    Or just download it [here](https://github.com/github/hub/releases) and run sudo ./install
    



