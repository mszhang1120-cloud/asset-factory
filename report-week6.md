### LAB 06
- 산출물 경로: `scripts/hooks/tdd-guard.sh`, `.claude/settings.json`
- 핵심 증거：
PreToolUse 훅으로 index.html 수정을 차단하는 TDD‑GUARD 동작 로그 (파일: lab06‑block‑log.txt)
> 테스트 결과：index.html 내 JS 수정을 시도하였고 훅이 정상 작동하여 직접 코드 수정을 차단하였다.
- 관찰 한 줄: PreToolUse 훅을 이용해 코드 수정 전 검증 절차를 강제할 수 있다.
### LAB 10
- 산출물 경로: `scripts/hooks/shell‑guard.sh`, `.claude/settings.json`
- 핵심 증거：
Shell 훅으로 파일 삭제 명령을 차단하는 SHELL‑GUARD 동작 로그 (파일: lab10‑block‑log.txt)
> 테스트 결과：rm 파일삭제 명령 실행 요청 시 훅이 정상 동작하여 명령을 차단하였다.
- 관찰 한 줄: Shell 타입 훅을 이용해 위험한 쉘 명령 실행을 미리 막을 수 있다.





