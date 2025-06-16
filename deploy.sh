echo "Deploying to $NGINX_IP"

sshpass -p "$NGINX_PASSWORD" rsync -avz -e "ssh -p 22" ./index.html "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain/html/index.html
sshpass -p "$NGINX_PASSWORD" rsync -avz -e "ssh -p 22" ./logo.png "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain/html/logo.png
sshpass -p "$NGINX_PASSWORD" rsync -avz -e "ssh -p 22" ./screenshot.png "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain/html/screenshot.png

echo "Deployed!"
