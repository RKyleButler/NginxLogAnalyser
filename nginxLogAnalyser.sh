#SETUP
NGINX_LOG="/var/log/nginx/nginx-access.log"


echo "Top 5 IP addresses with the most requests:"
cut -d ' ' -f 1 $NGINX_LOG |
sort |
uniq --count |
sort -nr -t' ' -k1 |
head -n 5 |
awk '{print $2 " - " $1}'
echo		#SPACE


echo "Top 5 most requested paths:"
sed 's/\/ /\//g' $NGINX_LOG |
cut -d ' ' -f 7 |
sort |
uniq --count |
sort -nr -t' ' -k1 |
head -n 5 |
awk '{print $2 " - " $1}'
echo		#SPACE


echo "Top 5 response status codes:"
egrep -o ' [0-9]{3} ' $NGINX_LOG |
sort |
uniq --count |
sort -nr -t' ' -k1 |
head -n 5 |
awk '{print $2 " - " $1}'
echo		#SPACE


echo "Top 5 user agents:"
awk '{print $NF}' $NGINX_LOG |
sort |
uniq --count |
sort -nr -t' ' -k1 |
head -n 5 |
awk '{print $2 " - " $1}'
