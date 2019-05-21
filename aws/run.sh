#!/bin/sh

# initiate quickstart spinup of virtual Pantheon cluster

# Check if user argument is present
if [ -z "$1" ]
then
  echo "No user name argument supplied. -> defaulting to ubuntu"
  USER="ubuntu"
else
  USER=$1
fi


# Check if the user is registered in the system
id -u $USER > /dev/null 2>&1
if [ $? -eq 1 ]
then
  echo "No \"${USER}\" user registered on this system."
  exit 1
fi

PORT=80

# Check if port PORT is available before installing all this
sudo lsof -Pi :$PORT -sTCP:LISTEN -t > /dev/null 2>&1
if [ $? -eq 0 ]
then
  echo "Port ${PORT} is already in use on this system."
  exit 1
fi

# Go to user home, run it to be available on port 80 of the machine.
cd /home/$USER/pantheon-quickstart
sudo ./run.sh -p $PORT
