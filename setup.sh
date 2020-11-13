#!/bin/bash

# Assuming you have run git clone git@ghe.hedgeserv.net:agautam/scratch.git

cd $(dirname $0)
src_folder=`pwd`

cd $HOME
if [[ ! -d .ajay ]]; then
	ln -s $src_folder .ajay
fi

grep ajay ~/.bashrc
if [ $? -ne 0 ]
then
	echo Setting up bashrc
	echo '#### My personal setup ####' >> ~/.bashrc
	echo '[[ -f ~/.ajay/bashrc ]] && . ~/.ajay/bashrc' >> ~/.bashrc
else
	echo Skipping bash setup
fi

if [ -f ~/.inputrc ]
then
	echo found existing .inputrc. moving:
	mv -v ~/.inputrc ~/inputrc.OLD
fi

echo Linking inputrc
ln -s ~/.ajay/inputrc ~/.inputrc

if [ -f ~/.ssh/id_rsa ]
then
	echo SKIPPING SSH setup. id_rsa exists!
else
	mkdir ~/.ssh 2> /dev/null
	chmod 700 ~/.ssh
	echo Copying ssh files...
	cp ~/.ajay/ssh/* ~/.ssh/
fi

echo Done
