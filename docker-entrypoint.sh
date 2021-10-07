#!/bin/sh

# run init script
if (ls /init.d/*.sh 1> /dev/null 2>&1); then
	for f in /init.d/*.sh; do
		echo "=> Run custom init script '$f'"
		sh "$f" 
	done
fi
    
echo "=> Start Beancount bot"
beancount_bot --config $BEANCOUNT_BOT_CONFIG
