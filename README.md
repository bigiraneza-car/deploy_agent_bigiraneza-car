THE DEPLOY AGENT INDIVIDUAL SUMMATIVE LAB - Attendance Tracker automation
In this file I am going to explain briefly how to run the script that automates the bash script tracking students attendance and how to trigger the archive feature.

1. How to run the script

- Firstly, create the file setup_project.sh as requested. Use "touch" command to create the file.

- Secondly, change the permission of the file to make it executable using the change mode command chmod +x nameofthefile. 
Why +x? +x will add the execute option to all the users, from the owner of the file, the group, and the other users. Use ls -l to view the permissions.

- Thirdly, add a script starting with the shebang #!/usr/bin/env bash to make the script inside executable.

- Lastly, run the script using the command ./nameofthefile or bash nameofthefile. 
Here it is ./setup_project.sh and enter an input when prompted "The user must enter an input:".
 


2. How to trigger the archive feature

- The archive feature is triggered by the SIGINT signal "ctrl+c" that interrupts the script.
- The signal SIGINT is caught by a "trap" command that calls the function containing the "tar" command that creates the archive.
- Then, "tar" saves the current state of the ran script into an archive and exit.

N.B: Watch through the link below the video explaining my script.
Video: https://drive.google.com/file/d/18lcgr_6ChVBVM8RCk0h9JUoUTXtcIx4V/view?usp=sharing 
 
