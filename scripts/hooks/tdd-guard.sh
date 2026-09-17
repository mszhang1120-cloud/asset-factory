#!/bin/bash
# LAB06 TDD-GUARD: index.html 수정 전 검증 강제
read -r payload

# index.html 수정 요청인지 확인
if [[ "$payload" =~ "index.html" ]]; then
cat <<EOF
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"TDD-GUARD：index.html JS 수정 전, 테스트 코드와 검증 기준을 먼저 제시해야 합니다!"}}
EOF
    exit 1
fi

exit 0
