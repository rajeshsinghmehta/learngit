#!/bin/bash

source ../setup/setenv.sh

echo "Enter your password for the Apigee Enterprise organization $org, followed by [ENTER]:"

read -s password

proxy=java-cookbook

echo "Enter version for the proxy $proxy, followed by [ENTER]:"

read  proxy_version

echo Deploying $proxy to $env on $url using $username and $org

../tools/deploy.py -n $proxy -u $username:$password -o $org -h $url -e $env -p / -d ./$proxy_version

echo "If 'State: deployed', then your API Proxy is ready to be invoked."

echo "Run 'invoke.sh'"
