#!/bin/bash
cd velocity

DIVIDER = "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

echo $DIVIDER 

echo "Your MOTD (eagler only): $MOTD"
echo "Your Max Players: $MAXPLAYERS"
echo "Your IP (server): $SERVER"

echo $DIVIDER

sed -i 's/${MOTD}/'"$MOTD"'/g' velocity.toml
sed -i 's/${MAXPLAYERS}/'"$MAXPLAYERS"'/g' velocity.toml
sed -i 's/${SERVER}/'"$SERVER"'/g' velocity.toml

cd plugins/eaglerxserver

sed -i 's/${MOTD}/'"$MOTD"'/g' listeners.toml

cd ../..

cd velocity

echo "Starting Velocity!"
java -Xmx512M -Xms512M -jar velocity.jar