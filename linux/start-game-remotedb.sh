#!/bin/bash
cd ..

# Get the user input:
read -p "Username: " ttuUsername
read -s -p "Password: " ttuPassword
echo
read -p "Gameserver (DEFAULT: 167.114.28.238): " TTU_GAMESERVER
TTU_GAMESERVER=${TTU_GAMESERVER:-"167.114.28.238"}

# Export the environment variables:
export ttuUsername=$ttuUsername
export ttuPassword=$ttuPassword
export TTU_PLAYCOOKIE=$ttuUsername
export TTU_GAMESERVER=$TTU_GAMESERVER

echo "==============================="
echo "Starting Toontown Unlimited..."
echo "Username: $ttuUsername"
echo "Gameserver: $TTU_GAMESERVER"
echo "==============================="

/usr/bin/python2 -m toontown.toonbase.ClientStartRemoteDB
