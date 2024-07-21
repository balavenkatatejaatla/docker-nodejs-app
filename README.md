# az-nodejs-app

apt update -y
apt install docker.io -y

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# download and install Node.js (you may need to restart the terminal)
nvm install 20
# verifies the right Node.js version is in the environment
node -v # should print `v20.15.0`
# verifies the right NPM version is in the environment
npm -v # should print `10.7.0`
apt install npm 
cd az-nodejs-app
npm install
npm clean-install install

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install azure-functions-core-tools-4
func --version




export FUNCTIONS_WORKER_RUNTIME=node
npm start
nodejs --version
node --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
node --version
nodejs --version
nvm install 20
node --version
cd az-nodejs-app/
npm start
export FUNCTIONS_WORKER_RUNTIME=node
npm start
npm start --loglevel=verbose



docker build --build-arg MYSQL_HOST=testmysqlflex.mysql.database.azure.com \
            --build-arg MYSQL_USER=mysqladmin \
            --build-arg MYSQL_PASSWORD=Password@123 \
            --build-arg MYSQL_DATABASE=test \
            --build-arg MYSQL_PORT=3306 \
            -t docker-nodejs-app .


docker run -it -p 80:80 \
            -e MYSQL_HOST=testmysqlflex.mysql.database.azure.com \
            -e MYSQL_USER=mysqladmin \
            -e MYSQL_PASSWORD=Password@123 \
            -e MYSQL_DATABASE=test \
            -e MYSQL_PORT=3306 \
            docker-nodejs-app

curl -i http://localhost:80/api/getStudents
docker ps -a
docker exec -it 1264576941e6 bash
docker logs -f 22ce6b7a0aca
docker kill -s 06205ce59c7f




