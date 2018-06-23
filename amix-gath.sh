#!/bin/bash
#
# Under the GPLv3 Terms (General Public License).
# amix-gath is a Script for Information Gathering of a Target.
# Version 1.0
# by </Amix>
#

# Variables
target="$1"
name="Amix"

# Colors
green='\033[92m'
orange='\033[93m'
red='\033[91m'
blue='\033[94m'


if [ -z $target ]; then
	echo -e "$orange amix-gath$red v1.0"
	echo -e "$orange by $blue<$red/$blue$name>"
	echo -e "$orange usage:$blue ./amix-gath.sh www.site.com"
	exit
fi

firefox 2> /dev/null &
sleep 3

# Star Browser
# firefox $target 2> /dev/null

# tcputils Website
firefox "http://www.tcpiputils.com/browse/domain/$target" 2> /dev/null

# netcraft Website
firefox "http://toolbar.netcraft.com/site_report?url=$target" 2> /dev/null

# shodan Website
firefox "https://www.shodan.io/search?query=$target" 2> /dev/null

# censys Website
firefox "https://www.censys.io/ipv4?q=$target" 2> /dev/null

# crt.sh Website
firefox "https://crt.sh/?q=%25.$target" 2> /dev/null

sleep 5

# zone-h Website
firefox "https://www.google.ca/search?q=site:zone-h.org+$target" 2> /dev/null

# xssposed Website
firefox "https://www.xssposed.org/search/?search=$target&type=host" 2> /dev/null

# Security headers Website
firefox "https://securityheaders.io/?q=$target" 2> /dev/null

# ssllabs Website
firefox "https://www.ssllabs.com/ssltest/analyze.html?d=$target" 2> /dev/null

sleep 5

# google hacking
firefox "https://www.google.com/search?q=site:$target+username+OR+password+OR+login+OR+root+OR+admin" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+inurl:shell+OR+inurl:backdoor+OR+inurl:wso+OR+inurl:cmd+OR+shadow+OR+passwd+OR+boot.ini+OR+inurl:backdoor" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+inurl:readme+OR+inurl:license+OR+inurl:install+OR+inurl:setup+OR+inurl:config" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+inurl:wp-+OR+inurl:plugin+OR+inurl:upload+OR+inurl:download" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+inurl:redir+OR+inurl:url+OR+inurl:redirect+OR+inurl:return+OR+inurl:src=http+OR+inurl:r=http" 2> /dev/null

sleep 5

firefox "https://www.google.com/search?q=site:$target+ext:cgi+OR+ext:php+OR+ext:asp+OR+ext:aspx+OR+ext:jsp+OR+ext:jspx+OR+ext:swf+OR+ext:fla+OR+ext:xml" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+ext:doc+OR+ext:docx+OR+ext:csv+OR+ext:pdf+OR+ext:txt+OR+ext:log+OR+ext:bak" 2> /dev/null

firefox "https://www.google.com/search?q=site:$target+ext:action+OR+struts" 2> /dev/null

# pastebin Website
firefox "https://www.google.com/search?q=site:pastebin.com+$target" 2> /dev/null

# linkedin Website
firefox "https://www.google.com/search?q=site:linkedin.com+employees+$target" 2> /dev/null

# debug Website
firefox "https://tools.pingdom.com/#!/cgD7Lh/$target" 2> /dev/null

# dnscheck Website
firefox "http://dnscheck.pingdom.com/?domain=$target" 2> /dev/null

sleep 15

# clean display
clear

# exit
exit
