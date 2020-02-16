# https://devhints.io/bash

if [ $(id -u) != 0 ]; then
    echo please execute this script with root privilage:
    echo su -c $0
    exit
fi

USER=`whoami`

echo -n "Whats user ID to be add to sudoers?[$USER]: "
read ans
if [ -n $ans ]; then
    USER=$ans
fi
echo $USER

UCCOUNT=`grep $USER /etc/sudoers | wc -l`
UCOUNT=`grep $USER /etc/passwd | wc -l`

if [ $UCCOUNT != "0" ]; then
    echo "Faild! Configuration of \"$USER\" is already exists in file /etc/sudoers"
elif [ $UCOUNT == "0" ]; then
    echo "Faild! \"$USER\" is not a valid user id"
else
    chmod +w /etc/sudoers
    USERCONF="$USER ALL=(ALL) NOPASSWD:ALL"
    echo $USERCONF >> /etc/sudoers
    chmod -w /etc/sudoers
    echo "Success! Configuration of \"$USER\" has been added to /etc/sudoers"
fi

