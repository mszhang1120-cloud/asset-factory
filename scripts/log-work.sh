#!/bin/bash
# LAB05 log-work.sh /help 정보 수집 스크립트
read -r payload
echo '{"log-collector":{"action":"capture-help","source":"agent help output"}}'
