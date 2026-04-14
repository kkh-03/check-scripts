#!/bin/bash

echo "인위적 world-writable 파일 생성 "

echo "파일 생성 중..."
sudo touch /home/testfile.txt


echo "권한을 world-writable(666)로 변경"
sudo chmod 666 testfile.txt

echo "결과 확인"
ls -l testfile.txt

echo "✅ 완료: testfile.txt는 모든 사용자가 수정 가능"


echo " 불필요한 world-writable 파일 점검 시작"
echo "======================================="


echo "/home 영역 검사"
find /home -type f -perm -0002 2>/dev/null

echo ""
echo " /etc 영역 검사 (설정 파일 위험)"
find /etc -type f -perm -0002 2>/dev/null

echo ""
echo "/var 영역 검사 (로그/서비스 파일)"
find /var -type f -perm -0002 2>/dev/null

echo ""
echo "======================================="
echo "필요 없는 world-writable 파일은 chmod 644 또는 640으로 수정 권장"
echo "점검 완료"