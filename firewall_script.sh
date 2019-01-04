##
##   Firewall Scanner
##   Scanning methods All
##   Developed by Basil Thamas
##

#Code to Invate the fireall in paranoid mode
echo "Code to Invate the fireall in paranoid mode"
echo " "
nmap -f -T0 -n -Pn --data-length 200 -D 92.168.1.101,192.168.1.102,192.168.1.103,192.168.1.23 192.168.1.1 -oN /root/Documents/Codes/Network_Sec/Scripts/Results/http_page_title.txt --append-output

echo "Code to Invate the fireall in Sneaky mode"
echo " "
nmap -f -T1 -n -Pn --data-length 200 -D 92.168.1.101,192.168.1.102,192.168.1.103,192.168.1.23 192.168.1.1 -oN /root/Documents/Codes/Network_Sec/Scripts/Results/http_page_title.txt --append-output

