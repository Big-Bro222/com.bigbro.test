#!/bin/sh

set -e

local_registry="http://34.88.239.191:4873/"

# start local registry
# tmp_registry_log=`mktemp`
# sh -c "mkdir -p $HOME/.config/verdaccio"
# sh -c "cp --verbose /config.yaml $HOME/.config/verdaccio/config.yaml"
# sh -c "nohup verdaccio --config $HOME/.config/verdaccio/config.yaml &>$tmp_registry_log &"
# wait for `verdaccio` to boot
# FIXME: this throws a syntax error, but would be great to make it run
# grep -q 'http address' <(tail -f $tmp_registry_log)
# login so we can publish packages
# sh -c "cd Packages/com.BigBro.URPPackageTemplate"
sh -c "npm config set _auth $NPM_AUTH_TOKEN && npm config set registry $local_registry && npm config set always-auth=true && npm config set Ze.Qi@outlook.com"
# Run nmp command
sh -c "npm publish --registry $local_registry $1"
