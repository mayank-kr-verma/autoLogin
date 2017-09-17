set deviceSerialNumber to "00E04C362D70"
set shown to "1"
set var to "0"

repeat
	try
		set theResult to do shell script "system_profiler SPUSBDataType | grep " & deviceSerialNumber
		if (var = "0") then
			set var to "1"
			set shown to "0"
			set countdown to 8
			repeat countdown times
				display dialog "Connecting to Internet in " & countdown giving up after 0.75
				set countdown to countdown - 1
			end repeat
			tell application "Safari"
				activate
				set URL of document 1 to "http://172.172.172.100:8090"
			end tell
			tell application "System Events"
				delay 1
				keystroke tab
				keystroke "id"
				keystroke tab
				keystroke "password"
				keystroke return
				delay 1
			end tell
			set shown to "0"
			tell application "Safari"
				quit
			end tell
		end if
	on error
		set var to "0"
		if (shown = "0") then
			set shown to "1"
			set theDialogText to "Internet Disconnected"
			display dialog theDialogText with icon caution giving up after 3
			
		end if
	end try
end repeat