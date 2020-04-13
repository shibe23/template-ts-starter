#!/bin/sh
NODE_VERSION="stable"
NPM_VERSION="stable"

npm init -y

echo $NODE_VERSION > .node-version
echo $NPM_VERSION > .npm-version
cat > .npmrc << EOF
also=dev
save-exact=true
engine-strict=true
EOF

npm install -D webpack webpack-cli babel-loader @babel/core @babel/preset-env typescript npm-run-all

mkdir src
touch src/index.ts
