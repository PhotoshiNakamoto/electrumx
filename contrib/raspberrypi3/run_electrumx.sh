#!/bin/sh
###############
# run_electrumx
###############

# configure electrumx
export COIN=Bitcoin
export DAEMON_URL=http://rpcuser:rpcpassword@127.0.0.1
export NET=mainnet
export CACHE_MB=400
export DB_DIRECTORY=/home/username/.electrumx/db
export SSL_CERTFILE=/home/username/.electrumx/certfile.crt
export SSL_KEYFILE=/home/username/.electrumx/keyfile.key
export BANNER_FILE=/home/username/.electrumx/banner
export DONATION_ADDRESS=your-donation-address

# connectivity
export HOST=electrumx.photonicbitcoin.com
export TCP_PORT=50001
export SSL_PORT=50002

# visibility
export REPORT_HOST=electrumx.photonicbitcoin.com
export RPC_PORT=8806

# run electrumx
ulimit -n 10000
/usr/local/bin/electrumx_server 2>> /home/username/.electrumx/electrumx.log >> /home/username/.electrumx/electrumx.log &

######################
# auto-start electrumx
######################

# add this line to crontab -e
# @reboot /path/to/run_electrumx.sh
