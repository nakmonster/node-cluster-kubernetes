REM you need to be installed pm2 globally (npm install pm2 -g)
start cmd /k cd C:\Users\munee\Documents\node_examples\node-cluster-kubernetes
start cmd /k  pm2 start node_master/index.js
start cmd /k  pm2 start node_slave/index.js
start cmd /k  pm2 start node_slave2/index.js

start cmd /k pm2 monit
