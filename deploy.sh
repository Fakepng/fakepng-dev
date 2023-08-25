
echo "Kill all the running PM2 actions"
sudo pm2 kill

echo "Jump to app folder"
cd ~/fakepng-dev

echo "Update app from Git"
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
sudo npm install

echo "Build your app"
sudo npm run build

echo "Run new PM2 action"
sudo pm2 start npm --name fakepng-dev -- run start -- -p 3000