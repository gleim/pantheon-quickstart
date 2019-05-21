# install Truffle dependencies
sudo apt-get update && sudo apt-get -y upgrade
sudo apt-get -y install curl git vim build-essential
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g express

# install Truffle
sudo npm install -g truffle

# install Meteor
curl https://install.meteor.com/ | sh

# download EVE
git clone https://github.com/consensys/eve

# build & deploy EVE back-end contracts
cd eve
npm install
truffle migrate --reset --network pantheonWallet

# build & launch EVE front-end UI dApp
cd demo/eve-ui
npm install
npm run start
