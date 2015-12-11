#!/bin/bash

if [ "$1" != "--check" ] && [ "$1" != "--install" ]; then
	echo "Usage: upgrade.sh [--check|--install]"
	echo "Use ansible to check and install updates on servers using ssh and apt/yum."
	exit 1
fi

if [ "$1" == "--check" ]; then
	ansible-playbook -i "`dirname $0`/hosts" "`dirname $0`/check.yml"
elif [ "$1" == "--install" ]; then
	ansible-playbook -i "`dirname $0`/hosts" "`dirname $0`/install.yml"
fi
