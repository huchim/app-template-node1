# Change to working directory if is neccesary.
cd $1

mkdir -p ./src
mkdir -p ./dist
mkdir -p ./tmp
mkdir -p ./configurations
mkdir -p ./configurations/webpack

npm install --no-audit --prefer-offline
npm install node-sass --no-save
