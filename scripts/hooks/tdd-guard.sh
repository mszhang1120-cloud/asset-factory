#!/bin/bash
# TDD‑Guard 适配静态index.html版本
# 本项目没有 .test.js 单元测试文件
# 当修改index.html里面JS业务逻辑，拦截，要求先写浏览器验证清单

read -r payload

# md/json/yml文件直接放行，不拦截
if [[ "$payload" =~ "\"file_path\":\".*\\.(md|json|yml|yaml)\"" ]]; then
  exit 0
fi

# 判断是否修改 index.html
if [[ "$payload" =~ "\"file_path\":\"index.html\"" ]]; then
cat <<EOF
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"TDD‑GUARD：修改index.html内部JS业务逻辑前，请先写好浏览器手动验证步骤 / page‑checker检查清单！"}}
EOF
    exit 1
fi

exit 0
