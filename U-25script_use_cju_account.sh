#!/bin/bash

echo " /home/user1에 그냥 ls를 쓴 경우"

sudo ls -l /home/user1



echo " 숨겨져 있는 파일 찾는 명령어"
cd ~

sudo find / -user user1 -name backdoor 2>/dev/null
