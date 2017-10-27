# autoLoginImproved
## Applescript to automatically login me into internal college network on detecting LAN connection

This applescript was developed to tackle a common problem faced by me in college. Our college provides LAN in hostels but the network uses 802.11x authentication which requires you to login every time you connect to internet.
This applescript saves the user name and password that are used to login and as soon as it detects connection, it fires up safari, loads the login page, uses javascript to fill details and logs me in.
It pings my local college ip and hence will work only if i connect to college internal network

The command to load and unload the scripts have been updated
--> chmod u+x ~/PATH/TO/netImprovedLoad.command
and 
-- > chmod u+x ~/PATH/TO/netImprovedUnload.command
