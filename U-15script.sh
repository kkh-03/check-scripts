#!/bin/bash

echo " 테스트 계정 생성"
sudo adduser --disabled-password --gecos "" testuser

echo " testuser 홈 디렉토리 확인"

sudo ls -al /home/testuser

echo "testuser 계정 삭제(홈은 남김)"
sudo deluser testuser

echo " 소유자가 존재지 않는 파일 및 디렉터리를 확인합니다"

sudo find / -nouser -o -nogroup 2> /dev/null