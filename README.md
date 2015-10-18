###Ancient Batch Projects

[Relevant XKCD](https://xkcd.com/1360/).

##What is this? 

This is a series of Batch programs that I worked on from 5-8th grade. 

At school, my friends and I would chat, send files, and play games using these programs. Like most young kids who are just starting out with technology/computers, my early exploits were terribly misguided, so I ended up writing 
this software in Batch, which is not at all suited to the complex functions the programs served. As a result, I ended up with a full fledged BBS (with mail and chatroom functions!), DOS shell-like thing, and more. 
Looking back, however, the fact that such a simple language could be used to produce such projects was pretty interesting. 

At one point, in fact, my friends and I actually ran the "DMS" (The name of the BBS) off of a telnet server for a few weeks. Luckily, it was never compromised (any random input like &@#%^* would drop you right to the shell), 
but we had a few users and it turned out to work somewhat well. Good times :)

##What can I do with this? 

If the above piques your interest, you can peruse the code. I wouldn't recommend running it for any sort of actual, important purpose (since it's most likely terribly buggy), however, it's fun to play with or 
use between a small group of friends, as we did.  

These programs were built around the permissions given to users on my middle school's network, on which there was a single large, shared drive. In the beginning, students would "pass notes" by creating text files in "hidden" locations
on that drive, and I built the system to expand on this idea. It handled several text files where chat messages, user mail, and configuration was stored. Not bad for a 5th grader. 

Perhaps one of the people who view this repository will be like I was, back in that time. 
If so, I hope this is something they find interesting and that it sparks theinr interest in programming (just not in Batch, for their own sake :P).

##How does it work?

In all honesty, I don't really remember. There's a few text files explaining various aspects of the system and its configuration in there somewhere. START.bat appears to start the system. There's a hardcoded
password somewhere in DMS.bat for the admin interface. SETUP.bat runs setup, but I don't think it works properly (you wouldn't want a full fledged installation anyways). DMS mainly works by reading/writing to various
text files, which are organized into various folders depending on their function.  

Enjoy!
