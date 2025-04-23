echo "Deploying to $NGINX_IP"

rsync -avz -e "ssh -p 22" ./index.html "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain-site/index.html
rsync -avz -e "ssh -p 22" ./logo.png "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain-site/logo.png
rsync -avz -e "ssh -p 22" ./screenshot.png "$NGINX_USER"@"$NGINX_IP":/var/www/unitrain-site/screenshot.png

echo "Deployed!"
