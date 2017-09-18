set networkUp to true
set notconnected to true

repeat
	try
	  do shell script "ping -c 1 -t 2 172.172.172.100"
	  set networkUp to true
	on error 
	  set networkUp to false
	  set notconnected to true
	end try

	if networkUp then
		if notconnected then
			try
			  	set notconnected to false
			    tell application "Safari"
					activate
					set URL of document 1 to "http://172.172.172.100:8090"
				end tell
				tell application "System Events"
					delay 1
					keystroke tab
					keystroke "160717"
					keystroke tab
					keystroke "Rio@1234"
					keystroke return
					delay 1
				end tell
				tell application "Safari"
					quit
				end tell
			end try
		end if  
	end if
end repeat


