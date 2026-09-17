#!/bin/bash
# LAB10 Shell-Guard：위험 쉘 명령 차단
read -r payload

# 위험 명령어 리스트：rm、del、Remove-Item
if [[ "$payload" =~ "rm" || "$payload" =~ "del" || "$payload" =~ "Remove-Item" ]]; then
cat <<EOF
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"SHELL-GUARD：파일 삭제 명령(rm/del/Remove-Item)은 사용할 수 없습니다!"}}
EOF
    exit 1
fi

exit 0
