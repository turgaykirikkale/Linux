you should definitely know these commands

So just make sure you will watch the this video till the end, Lets get started 
So first command 

top command==>it helps you monitor system performance in real time
   when someone ask you monitor CPU utilization memory utilization in real time or even to check active proess in real time.
   that is also htop that is good extension for readibility 

ps command ==> that is used list running process Process ID and also you can visualize the process hierarchy, 

    pgrep nginx ==> a specific ID , if you already know nginx process running on the machine 

    pstree ==> using pstree -p you can see hierarchy of all the processes whenever there is strange process that you are not completly aware of just use pstree command give info about processes.

netstat command ==>it comes to troubleshooting is used to inspect the network connections if you wanna know if ports are available or not 
   netstat -tuln => it will show ports and where is used.

tcpdump command ==> there is latency when i try to access the application, when ever use this you can use tcpdump command it will capture and analyze network packages for diagnizing the connectivity issues. Very simple your clien tis try to connect to your application and there is something with the connectivity just write sudo tcpdump 
for example sudo tcpdump -i enX0 port 80 what that enx0 ?? this primary network interface also it can be eth0 just change that place 

ı dont have any issues with particular application when ı try to connect to instances or all the process that are running on the instances you know they are going through the latency issues and you can just go and look for 

ipconfig command then
sudo tcpdump -i enX0

sudo tracerout google.com

most of the time you work always our of storage 

df -h addition (it shows us how much space left we have) to the this command what can ı use 

du -sh opt for opt folder how much space we have

HOW ABOUT MEMORY UTILIZATION

you need to do this 

free-h ===> so using this command you can instanyly check memory utilization 


When you are dealing with services its really important comment you are dealing with a nginx service you want to check the logs 
of the running nginx service or logs any services that are managed by systemd 

We can use journalctl so using this comment you can get complete logs of the services you can also check the particular services 
like this journalctl -u nginx 

you can also last boot or from the last restart of your Linux machine using journalctl -b

lsof -i :8085 who uses this port 

whenever you are dealing with huge amount of log files how do you read last few lines of the log As Linux administrators Devops engineer that could 20000 lines log you can use simple comment 

tail command => sudo tail -n 10 /var/log/auth.log ==> you can read last 10 lines of the code 
head command => sudo head -n 10 /var/log/auth.log ==> you can read first 10 lines of the code.


history command also important you can use for you history 