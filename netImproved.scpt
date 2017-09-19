to inputByName(theName, num, theValue)
tell application "Safari"
do JavaScript "document.getElementsByName('" & theName & "')[" & num & "].value ='" & theValue & "';" in document 1
end tell
end inputByName

to clickID(theId) 
tell application "Safari" 
do JavaScript "document.getElementById('" & theId & "').click();" in document 1
end tell 
end clickID

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
				inputByName("textbox", 0, "id")
				inputByName("textbox", 1, "password")
				clickID("logincaption")
				tell application "Safari"
					quit
				end tell
			end try
		end if  
	end if
end repeat


