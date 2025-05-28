Automation is a process where you will try to reduce manual activities when you something automated in Linux machine 
okay somebody ask me write number 1 to 10 ı will use the echo command and ı will write 1 to 10 what if number if goes 1000 or some one said lets create 1000 field on your machine and some time later increase the count to 1000 this is why you need to automation 

Schell scripting in linux is process of automating your day-to-day activities or regular activities on your linux computer.
it can be everywhere it can be on AWS, or local Linux machine 

what are the basic requirements for schell scripting ?

first of all to write a schell scripting you need a file inside in that file you will write schell scripting 

creating file ==> touch command 

touch first_file.sh,

Listing folders => ls
Look the files with timestam ==> ls -ltr

when you write front of command ==> man it explain you what is the about all possible commands. ==> man ls, man touch 

so ı created file and then ı want to write schell scripting in this file, 

vi first_file.sh or vim first_file.sh

if ı dont use touch and directly use vim command 

vim second_file.sh  file is automatically created and you can start writing on this file, 

so why ı should use touch command if ı can create and vim?? it is important because you will use touch command when you do automating your system 

ı open the file with vi first_file.sh

and started to write scripting very first thing you need to is use to specific indentation or use specific syntax

#!/ like this ==> this is call shebang what is the use case of shebang and it will follow #!/bin/bash ...etc 
what is requirement why we have to do that ?

bash, ksh, dash, sh there different option for execute the scripting you have inform your Linux your Kernel this is the executable that ı want to use for executing my schell scripting one of the popularly use of them is BASH for example bash is easy to for loop in schell scripting 

two most important of this thing #!/bin/sh and #!/bin/bash what is the difference between of them lets look 

sh --  using linking concept to bash but nowadays some operating systems doesnt use linking concept for sh to bash and they choose directly use bash system be careful about that and using bash it would be more comfortable and safety way for 

and now 

lets inside the script we can just try write our name

#!/bin/bash

echo "my name is Turgay" ==> it wil print my name.

when you write the file, you just wanna quit it  = q! enter,  save and quit  wq!

cat command => is used to print to content of the file 

how to execute this file ==> ./<filename> or sh <filename>

on Linux you are the creator of the file Linux terminal wants to understand whenever you create a schell script who can execute this file ? the main is security ıf you have permission ı can allow the execute this file whenever you create a file you have to grant Permission to file 

for grant permission control we will use CHMOD 

chmod divided three categories 
1-which user has access 
2-which group has access to file 
3-what are you permissions 

when use the number you categorized the these permissions 
-by default you want to grant access to everybody ==> chmod 777 <nameofthefie>

first 7 for me second seven for group third 7 for everyone

Linux used 4 2 1 =>> 4 to Read , 2 for Write , 1 for Execute 

for example chmod 444 => read read read as a user owner, as a group and as everyone they can read this file 

ESC + I you will start Insert Mode wq!: which is save the file 

in linux pwd command used for which directory you are in 
 
 mkdir => create a folder 
 cd => changes to directory 
 cd .. => is going back 


 WHAT IS THE ROLE OF THE SCHELL SCRIPTING INSIDE DEVOPS 

 as a devops engineer we have different activities 

 -infra maintanence 
 -maintain all code in organizations ==> interact git you use only Linux 
 -configuration managment 

 for all these purposes we use schell scripting, 

 Lets give a example there is devops at Amazon and he recognized there 10000 thasunds machine works on Amazon some reasons he has to manage all 10000 machines all together he wants to monitor health of the all these machines so every time he has go to these virtual machines and they dont performans as expected 

 Every time goes to the this machines and using the linux commands to fix all of things what he will instead do is he will make use of schell scripting so he write one single schell script and he will save the schell script to Repository and whenever some devops engineers says there is issue with 9999 VM what will he do he will just execute to schell script on his local machine and what is the schell script is does logs and list the parameters for devops enginee r

 and also okay ı dont want to action from others ı will check every week by myself schell script will login into these machines look at the state of the these 10000 machines and it has send to email notification 

 there are tools why you use linux yes there are toolls but all of them restricted they logs restricted parameters but in my script ım fetching more parameters that are not provided by these tools day-to-day basics automation,  configuration , 

 you can look memory inside the machine monitor to Node health you can write simple script you can monitor tı CPU as well as RAM so these are the most important things 

 For CPU => nproc ==> will list to the CPUs on your machine 
 for RAM => free ==> you can identify what is the free memory what is the used memory what is the total memory you can identify thesee 

 but basically there is one command ==> top is generally used recognize which prosees use memory which one take memory 

 how do you monitor to node health with TOP command or ı can write a custom schell script 

 df=> writes all available places in the machine 

 NOW WE WİLL LOOK AT THE CUSTOM NODE SCRİPT 

 node script will detect to the node health of your machine 

 Lets start create a schell script 

 ==> vim nodeHealth.sh 

 #!/bin/bash

 ##########(Meta information about schell scripting)
 #author : Turgay
 #date : 01.01.2002
 #
 #this script outputs the node health 
 #Version : v1
 ##########

 df -h (for printing the disk space)

 free -g (printing the memory)

 nproc (printing the resources)


 lets save and try to execute 

 chmod 777 nodeHealth.sh => will execute the script  once you execute this sh file it has provided all the information that 
 required it is technically impossible to understand what is the output which command 

 making the efficiency for this script there are 2 ways we can write echoo option for explaning the sections

 echo "disk space"
 df -h (for printing the disk space)

 echo "memory"
 free -g (printing the memory)

 echo "resource"
 nproc (printing the resources)

 lets see other approaches which usually used by developers using all the echo statement is not visible some schell commands can bee 1000 commands before writing a schell script you will use 

 set -x (debug mode)

  df -h (for printing the disk space)

 free -g (printing the memory)

 nproc (printing the resources)

and you will see command you used before the result 

for example there you work on Amazon and there 200 hundred different microservices and there are lots of process that micro services follow lets say developer deployed there are different virtual machines and they are different applications application starts with differents process like login application, logout application, payments application etc ...how do you find out what are the processes that are running there is command for this

ps -ef

you want to find the process with ID's 
you use grep command for this 

ps -ef | grep "amazon" it will list all processes about amazons procesess ID important because whenever you want kill the process or want to take of the thread dump of the process you want to take heap of the process you make sure you use IDs of the procesess anything you do with the procesess you will use processes ID 

| pipe command take the result from first command and send the command grep place for filtering 

data | echo "this" date is a system default command stdin for this reason it will write just "this" pipe not able to reach information from stdin

so there is one command for taking IPs ==> awk

grep command gives you entire information about filter word but awk command gives specific column information 

for example 

ps -ef | grep amazon | awk -F" " '{print 2}'

set -e ==> exit the script when there is an error one of the drawbacks it will not give error when there is pipe for this reason we will use the set -o pipefail together 

set -o pipefail

Lets there 100 application that are running and one of the application is failing and you want to look the logsfile every time you run into error to go to log file and find the error to do that logs file usually very very huge files its hard to find for looking every line there should be short way of this 

cat logfile | grep error there is a way like that 

whenever logs get appended like there are more and more of logs what people usually do they upload the logs to some storage platforms lets say you upload the logs some google storage and it s not present on your virtual machine so how do you want to retrieve this information is using the CURL command 

curl <url of the storage of logs> | grep ERROR ==> retrieve the logs file from internet so lets say you want to maki API call 
also you need to something from internet you need curl command 

also there wget <URL> but wget download this file from internet. you can use the grep command to doenloaded file. 

one more command find what this command if you are using your day-to-day virtual machine you might store many information you want to mount new volumes into it and use it and storing different logs files and how do you find the log files ? ıf i know already there is a file that you are searching i will go to specific location and ı will open the this file lets say ı dont know for example there is file in ETC folder yes ı know there is file that called pam.d but ı dont know where is it ? but you have to find that out that  

you can use this command 

sudo find / -name pam.d ==> sudo is root user 

how will you go to the root user  ??
sudo su -

also you can move between user like su Turgay sudo Franka

sudo find/ -name pam.d ==> you can search with root user. 

IF ELSE Scripting 

if[expression]
  then
     aklsdajhdaskjhd
     asdhajkshdad
else
     ajshdkajhdsasd
fi


a=4
b=10

if[$a > $b]
  then 
    echo "hi"
else
    echo "hallo"
fi


FOR LOOPS IN SCHELL SCRIPTING 

for i in {1.100}; do echo $1; done 


There is a command it s name is trap is basically used for trapping signals so what are these signals let me take couple of whatever action that you are performing using your keyboard you are performing using some commands There are hundrends signals on Linux and you can trap the signals with that command and if the someone trigger that signal you dont need to take an action with that trap signals does this 


trap "echo dont use the ctrl+c" SIGINT 
trap "rm -rf" SIGNINT 