#
#
# Script codes * Nmap hack *
# Generated by Basil Thomas
#

#Code to Gather titles from HTTP server
nmap --script=http-title -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/http_page_title.txt --append-output

#Get HTTP headers of web services
nmap --script=http-headers -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/http_webServie_headers.txt --append-output

#Find web apps from known paths
nmap --script=http-enum -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/WebApps_path.txt --append-output

#Find Information about IP address
nmap --script=asn-query,whois,ip-geolocation-maxmind -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/IP_information.txt --append-output

#Find exposed Netbios servers
nmap -sU --script nbstat.nse -p 137 -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/Netbios_server.txt --append-output

#Attempts to pull a zone file (AXFR) from a DNS server:
map --script dns-zonetransfer.nse --script-args dns-zonetransfer.domain=<domain> -p53 -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/Pull_zonefile_DNSserver.txt --append-output

#Retrieve robots.txt files from discovered web servers:
nmap --script http-robots.txt -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/Retrieve_robot_.txt --append-output

#Guess valid samba’s username and password combinations using brute force
-script smb-brute.nse -p445 -iL input.txt -oN /root/Documents/Codes/Network_Sec/Scripts/Results/Samba_passwdGuess.txt --append-output
