#!/bin/bash

echo " 소유자가 존재지 않는 파일 및 디렉터리를 확인합니다"
echo " 관리자 권한이 있는 계정에서 실행해주세요"

sudo find / -nouser -o -nogroup 2> /dev/null