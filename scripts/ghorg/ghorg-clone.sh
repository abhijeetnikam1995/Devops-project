#!/bin/bash
#https://github.com/gabrie30/ghorg/releases/tag/v1.8.7 download ghorg from this link as per the os type
wget https://github.com/gabrie30/ghorg/releases/download/v1.8.7/ghorg_1.8.7_Linux_x86_64.tar.gz
tar -xvf ghorg_1.8.7_Linux_x86_64.tar.gz
ghorg clone all-groups --base-url=https://gitlab.com --scm=gitlab --token=XXXXXXXXXX --preserve-dir --fetch-all
ghorg clone group-name --base-url=https://gitlab.com --scm=gitlab --token=XXXXXXXXXX --preserve-dir --branch <branch-name>
