Have you ever wondered your mobile device how to connect with websites like google.com
How does the traffic flow from your device to the website and how the website receive the request and send respond back to you

IP Adress:  is a very simple concept Generate or provide unique adress to particular device that is connected to your network ,
     there is a house and there is local network Wifi that is created through a Router and there are to people living in this house
     and each person has two devices overall there are 4 devices at this Wifi network.

     one of the devices connected to the payments services and you wanted to know which device connect to the this service and you want to block acces in the future probably also there are devices which used by the kids to access to instagram you might want one person who is using this particular device to block acces to youtube platform now each of these devices does not have unique identifaction how can you do that its practically not possible and you will end up doing all these devices access block some specific website to avoid that each these devices should have unique number and that number is nothing but IPAdress 
     
     How does the Unique adress look like ?
     IPv4=> you will generate unique IPv4 adresses in format such as 172.52.4.3, 10.2.1.5 each number can be 0-255.0-255.0-225.0-255 computers unnderstands bits each these numbers one byte or 8 bits IP adress overall 4 bytes or 32 bits each part of Ip adress will seperated with 1 byte --------.--------.--------.-------- => 2^0, 2^1 2^2 2^3 2^4 2^5 2^6 2^7 8 bits.


Subnets: it easy to have home network or school network withing the school network , whenever creating this particuar network ,  lets say ım creating VPC on AWS ım requesting the network provider lets say some 65000 adresses ı know the maxiumum people that would connect to my Network if its a school network or office network maxiumum people convert connect to its only 40K so ı have just taken 25K Ip adresses as a space okay this amount cannot be exceeded, now ı will create a school WİFİ or office Wifi we will call this wifi as a free wifi anyone can connect to it any new employee that is joining the company starting to accessing this network right, what happened if the one person reached out the malicious website  ? that was written by hacker ?and hacker can acces this particular device and with the netwok hacker can access all the devices into this network technically all the devices hacked. so hacker can reach ainformation about company. so there is concept in networking which is called as a SUBNET 
     what exactly concept of subnet ? 
      it is sub networking you will say out of the 65000 adresess out of this complete network ı will split into two parts one parts ı will just use for financial networking with sensitive information company ı will call this as a secure network and you will have free network this network can have a password this will be shared if you are an emplooye this is free network this concept is called subnetting. 
      you have good advantage like : security, privacy, isolation you can create subnets any kind of networks.There are two type of subnets one Private, one is Public subnets
        Private Subnet: is some network that does not have access to internet 
        Public Subnet : is some network that has accest to Internet.

        how can you enable to acces to internet you can go to the particular subnets and you can attached route tables to this particular subnet and destination of a particular route of the subnet you can provide as internet gateway that will grant access to the internet even if you dont know particular concept  
     
     okay you split two part your network,  finance and free and totally there are 65k adresess how do you know ? finance and free adreses how may adresses they took,  how will you divide that ? when you are creating a subnet you will be asked to provide a CIDR range this is explaning how many adresses are available in a Particular subnets 
        So How CIDR works ?
           when you create VPC then inside the Subnet you will be asked for CIDR and when you want to create CIDR the simple solution is thay you say 172.16.3.0/24 so if you required 256 adresses you will provide with /24 32-24 = 8   2^8 =256 you can support your CIDR like this for ex 172.16.3.0-255, 172.16.4.0-255, 

    whenever you are creating a new network it will immediately ask you range for that particular network 
    for example 192.16.0.0/16 ı will have 65K IP adresses if my team wanted 32 IP adresess ı will create 192.16.0.0/27  ==> 32-27 = 5  2^5 =32  there are CIDR calculation platforms also you can use there

    we will always see 192.----- , 172.-----, 10.----- these number are used for private subnets 


    PORTS: when ever we provide IP adresses there are some ports like :80 :6000 :7000 :5513 :8080 what exactly these things basically to bind a application lets take a virtual machine on this VM machine ı have deployed applications and there can be number of applications you can provide a unique port for your application ports are also in particular range only and there are some ports they are taken also, there can be ports for jenkins starts on 8080 

    so wheever you create an application on VM to access this information from the internet you need two things one is the IP adress of the Vm ofcourese its a public IP adress and you need to ports 3.4.5.6:9292