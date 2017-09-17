# autoLogin
## Applescript to automatically login me into internal college network on detecting LAN connection

This applescript keeps in background and wait for my lan cable to be connected. On connection, it fires up Safari after showing a countdown to give time to system to establish connection. Script then opens the login page of my college and enters id and password and after logging me in, shuts down safari.
On disconnecting the cable it shows a dialogue box and then again waits for lan cable to be connected

The command to load and unload the scripts have been converted into respective files. Just by running those files you can load and unload the process and hence save some processing power if you are not going to use lan for a while.
But first you need to run a couple of  terminal command. This is a one time only setup that gives terminal permission to files to work.
--> chmod u+x ~/PATH/TO/netload.command
and 
-- > chmod u+x ~/PATH/TO/netunload.command
