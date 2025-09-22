#!bin/bash
cd velocity

echo "Your MOTD (eagler only): $MOTD"
echo "Your Max Players: $MAXPLAYERS"
echo "Your IP (server): $SERVER"

sed -i 's/${MOTD}/'"$MOTD"'/g' velocity.toml
sed -i 's/${MAXPLAYERS}/'"$MAXPLAYERS"'/g' velocity.toml
sed -i 's/${SERVER}/'"$SERVER"'/g' velocity.toml

cd plugins
cd eaglerxserver

sed -i 's/${MOTD}/'"$MOTD"'/g' listeners.toml

cd ..
cd ..

echo "Starting Velocity"
java -Xmx512M -Xms512M -jar velocity.jar