#!bin/bash
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
#~/.nvm/nvm.sh
#nvm install node
#echo "node installed"
#node -e "console.log('Running Node.js ' + process.version)"
#apt install nodejs -y
#curl -s https://raw.githubusercontent.com/jhuckaby/Cronicle/master/bin/install.js | node
#edit configuration in /opt/cronicle/conf/config.json
mkdir -p /opt/cronicle
cd /opt/cronicle
curl -L https://github.com/jhuckaby/Cronicle/archive/v1.0.0.tar.gz | tar zxvf - --strip-components 1
npm install
node bin/build.js dist
/opt/cronicle/bin/control.sh setup
/opt/cronicle/bin/control.sh start
echo "cronicle daemon started"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
curl http://128.199.22.122:3012/
