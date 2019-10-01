#!/bin/sh
NODE_VERSION="10.16.3"
NPM_VERSION="6.9.0"

npm init -y

echo NODE_VERSION > .node-version
echo NPM_VERSION > .npm-version
cat > .npmrc << EOF
also=dev
save-exact=true
engine-strict=true
EOF