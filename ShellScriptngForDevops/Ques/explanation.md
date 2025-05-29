1-List of the commonly used shell commands day-to-day?
  -Listing ing  ==> ls 
  -Find something we use ==>find
  -debug command ==> top
  -we look for the disk space ==> df
  -folder position => pwd 

2- Write a schell script that list all process 
  -ps -ef
  -if you wanna only proces ID's => ps -ef | aws -F" " '{print $2}' you can write directly the processes ID
  -write only Errors ==> ps -ef | grep "ERROR"
     --if it google space or S3 bucket you will use ==>curl google.com | grep HREF for example it will take all process with HREF reference

3-Write a schell script divided 3 & 5 and not 15
  -print odd number or even numbers 
  -print prime numbers etcc..
     
     #!/bin/bash
     #######
     #(author, vers,pn, what does it do)
     #
     #
     #######

     #Explain what are you doing divisible 3, divisible 5 and not with 3*5
      
      for i in {1..100};do
        if([`expr $i % 3` == 0] || [`expr $i % 5` == 0]) && [`expr $i % 15` != 0];
        then
            echo $i
        fi;
      done; //for loop finishing
  
4- Write a script shell for learning number of "S" in mississippi

    
     #!/bin/bash
     #######
     #(author, vers,pn, what does it do)
     #
     #
     #######

     x = mississippi

     grep -o "s" <<< "$x" | wc -l ==> wc -l count to S
     chmod 777 <folder_name>.sh

5- how will you debug the schell script 
    -you need to write set -x begin of the schell script

6- What is crontab is Linux ? Can you provide a usage of crontab?

    -corntab==>Linux adminn it is like a Alarm every day 
   as a admin you have to send report every day at 6 pm about node health 

7-How to open a read-only file , 
   -vim -r test.sh

8- What is the difference between soft and hard link ? 

  Lets say you create a file or you just try to save the file ths gets saved in the memory,
  and you want to reuse this file multiple times you want to create a copy for this file take a copy and modified this file in such cases you can use HARD LINK 
  Instead of coping this command all the time like cp command just coping file content of file into different commands you can just create hardlink to the specific file so using hardlink what you can do you can create copy or you can mirror a specific file what happens here even if your original file gets deleted, lets say you have a secret file and this screet file should not be deleted because you have some sensitive information for this reason you can create Hard link of the file and it will create a copy so even if the actual file deleted from the memeory your copy still exist and your hard link will keep a backup your file ,

  but softlink is not like that lets say you have python 3 installed on your machine you always see there is python 3 file and there is also python file whenever ./python execure it will send the python 3 , python has softlink to python 3,
  if you are deleting python 3 or python both of them point the same point of in the memory both of them deleted so soft links are like that 

9- What is the difference between break and continue statements  ? 
  -- with Break ==> you break the execution
  -- with Continue ==> Skip the part and continue to execute

10- what are the some disadvantages of schell scripting ?
  -- Errors are frequently and costly and a single command alter the command 
  -- The execution speed is slow
  -- Bugs or inadequacies in the language's syntax or implementation
  -- Large and complex tasks arent well suited to it, 
  -- Contrary to other scripting languages , etc.. it provides a minimal data structure 
  -- Every time a schell command is executed , a new process is launched.

11- is Bash dynamic or statically typed , why?
  --Dynamically typed because we dont use typed x , for example x = 5 then we can say x ="hallo" attached to value 

12- Explain about the Network troubleshooting utility.
  --traceroute ==> it is a tool that we can use for network debugging
  --traceroute google.com we can chech why our networking is so slow and latency 
  --tracepath does not require privilegies

13- How will you sort list of names in a file ?
  --we can use sort command 

14- How will you manage logs of a system that generate huge log files everyday ?
  --As Linux admin we will manage lots of application , each applications omit lots of logs and if your application real-time front-end facing application there will be thousunds of logs basically , if you keep all logs on your disk it gets increasing and increasing for that 
  there is efficient way on Linux thats is called LOGROTATE you can basically efficiently manage your logs you can defined how many days you can define how many days you can rotate these logs for example 24 hours later lets ZIP this logs you can create compression of these logs after 30 days you can delete this logs you can continue like these 