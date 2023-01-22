#!/bin/sh
# File : install-repo.sh
# Author : ttylnpm , ruihq
# Install's the repository : ttylnpm.github.io
echo Installing the repository.
sleep 1
pkg i gnupg wget -y
[ ! -d $PREFIX/etc/apt/sources.list.d ] && mkdir $PREFIX/etc/apt/sources.list.d
# Write the needed source file
if [ ! -f "$PREFIX/etc/apt/sources.list.d/ttylnpm.list" ]; then
	echo -e "deb https://ttylnpm.github.io tools termux" > $PREFIX/etc/apt/sources.list.d/ttylnpm.list
	apt update
else 
	echo "You already installed this Repository?"
fi 
