#!/bin/bash
# run.sh - Docker Swarm 로드밸런싱 테스트용

# 반복 횟수
REPEAT=10
# 요청을 보낼 URL (포트는 서비스에서 publish한 포트로 설정)
URL="http://localhost:8000"

echo "=== 로드밸런싱 테스트 시작 ==="
for i in $(seq 1 $REPEAT); do
    RESPONSE=$(curl -s $URL)
    HOSTNAME=$(echo $RESPONSE | grep -oP '"hostname":"\K[^"]+')
    echo "[$i] 응답 컨테이너: $HOSTNAME"
    sleep 1
done
echo "=== 테스트 종료 ==="
