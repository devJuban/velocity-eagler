#!/bin/bash
cd velocity

echo $MOTD

echo "Starting Velocity!"
java -Xmx512M -Xms512M -jar velocity.jar