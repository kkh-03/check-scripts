#!/bin/bash

echo " 불필요한 world-writable 파일 점검 시작"
echo "======================================="

# 1. 위험 경로 중심 점검 (실무 방식)
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