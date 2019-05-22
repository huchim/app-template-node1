# Change to working directory if is neccesary.
cd $1

mkdir -p ./src
mkdir -p ./dist
mkdir -p ./tmp
mkdir -p ./configurations
mkdir -p ./configurations/webpack

# Webpack
npm install -D --no-audit --prefer-offline webpack@^4.31.0  webpack-cli@^3.3.2  webpack-node-externals@^1.7.2
npm install -D --no-audit --prefer-offline html-webpack-plugin@^3.2.0  mini-css-extract-plugin@^0.4.2  webpack-concat-plugin@^2.4.2
npm install -D --no-audit --prefer-offline css-loader@^2.1.1 file-loader@^3.0.1 sass-loader@^7.1.0

# Typescript support
npm install -D --no-audit --prefer-offline typescript@^3.4.5 tslint@^5.16.0 tslint-microsoft-contrib@^6.1.1 typescript-tslint-plugin@^0.3.1
npm install -D --no-audit --prefer-offline happypack@^5.0.0 ts-loader@^3.5.0 tsconfig-paths-webpack-plugin@^3.2.0

# Mocha supports && coverage
npm install -D --no-audit --prefer-offline mocha@^5.0.4 @types/mocha@^2.2.48 chai@^4.1.2 @types/chai@^4.1.2
npm install -D --no-audit --prefer-offline ts-node@^5.0.1 tsconfig-paths@^3.4.2

# Sass Support
npm install -D --no-audit --prefer-offline sass-loader@^7.1.0
npm install node-sass --no-save
