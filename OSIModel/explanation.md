We all interact with servers on day to day basis 
how my request from my personal leptop sent over the internet to one of these google servers and how the respond received back back to my personal laptop what are the different components that are involved what are the different layers in which the Journey of data takes the place. 

==> OSI Model is one of the popular models thats help us to understand journey of the data across the internet what are the different layers that are involved OSI Model explain the things at seven Layers Layer 1 to Layer 7 what exactly each layer do what  happens to my data at each layers finally how does the reach one of these google servers before the request of OSI model there are two things happening they are 

1. DNS Resolution 
2. TCP handshake 

why these two things happen even before OSI model, lets says you are searching for https://www.google.com first your home router will try to do if this DNS is mapped to any particular IP adress if the domaint that you are trying to reach is actually valid only then you will move to second stage that TCP handshake and there is laptop and there is google server and you are trying to send a request to it you are ready to send a request but is the server ready to accept your request? what if it denies your request even after sending this entire things what if you cannot make a handshake with it, handshake nothing but you are just trying to say hi , and server say hi ım ready to accept your request so there is a tcp handshake which called as a three way handshake your local say hi to the server and server respond it with hii sync again sync acknowledge and your laptop say acknowledge

L7- and your browser will understand ready and it will initiate the HTTP or HTTPS requests to the server (APPLICATION LAYER)

L6- next step is data Encryption is also called data formatting and layer called as (PRESANTATİON LAYER)

L5 - your Browser will create a session that server doesnt to you for authentication for next time this called as a (SESSION LAYER)

all up there layer by maintained by your browser they are all browser level 

L4 - once session created to transit to data some time data can be transmitting 10 GB righ try to upload a movie if you are trying to data in one at a time like 10 gb you are trying to upload you know even simplest thing such as requesting to google.com what usually happens is your data is segmented right that is the data you are trying to do send or receive is segmented and splitted into 2 parts so this particular things called as a segmentation and this happens in layer 4 along with the segmentation in this particular layer protocol is also defined whether you want to use TCP/UDP mostly these are standardized if you are using HTTP the protocol is TCP if you are using DNS the protocol is UDP and this layer called as a (TRANSPORT LAYER)

L3 - Now its time to send the data is received by your browser and what your router does is two particular things one is to the segmented data lets say you want to travel Istanbul to Berlin you know destination second thing what is the shortest path you will pick up the shortest path example data from your personal laptop to google.com server that is from India to the US there will be multiple routers that are involved probably your home router than your internet service to etc etc etc and finally reached to google server so which router which host should your data take to reach the google server in the fatest way to understand,  what we will do at layer 3 we will add source IP adress as well as destination IP adress to each segment right here once you add the soure IP adress and the destination IP adress we call this data as the packets have a clear information of how to travel which path to take and who take this decisions this decision taken by the router this layer called as (NETWORKİNG LAYER)

L2 - your router received information if you understand carefully usually this routers are connected to switches when data transmitting like packets you need to transform these data packets to frames depending on the medium that you are using if you are using router data converted to into packets when you are using switches the data is converted to the frames along with this IP adress that you provided MAC information is also added which is nothing but MAC information tells these switches what are the other components within your network right so MAC components are also added So this Layer Called as (DATA LINK LAYER)

L1 - finally your data connected with optical cables these optical cables understans is electronical signals here your data is transmitted into eletronic data , so this layer called as a (PHYSCİAL SERVER).

servers turns to response the back way of system.


TCP/IP Model ==> L7,L6,L5 