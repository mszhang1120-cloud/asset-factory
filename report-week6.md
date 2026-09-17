### LAB 06
- 산출물 경로: `scripts/hooks/tdd-guard.sh`, `.claude/settings.json`
- 핵심 증거：
PreToolUse 훅으로 index.html 수정을 차단하는 TDD‑GUARD 동작 로그 (파일: lab06‑block‑log.txt)
> 테스트 결과：index.html 내 JS 수정 요청 시 tdd‑guard.sh 훅이 정상 작동하여 코드 수정을 차단하였고, 테스트 코드와 검증 기준을 먼저 제시하도록 요구하였다.
- 관찰 한 줄: PreToolUse 훅을 이용해 index.html 소스 수정 전 테스트와 검증 절차를 강제할 수 있다.






