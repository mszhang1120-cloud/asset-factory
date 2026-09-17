\# CLAUDE.md

@GOLDEN\_RULES.md



\## 행동 원칙（Principles）

Think Before Coding — 불확실한 부분은 추측하지 말고, 먼저 질문하거나 가정을 명시한 뒤 진행한다.

Simplicity First — 요청에 필요한 최소한만 구현한다. 과설계·불필요한 추상화를 금지한다.

Surgical Changes — 요청 범위 밖의 코드·주석·스타일은 건드리지 않는다.

Goal‑Driven — 작업 전 검증 방법을 먼저 정한다(예: 브라우저 수동 테스트, page‑checker 서브에이전트로 🔴 0개까지 재점검). 정한 방법으로 확인 후 완료로 간주한다.



\## 프로젝트 정보

"오늘 뭐 먹지?" 점심 메뉴 룰렛 웹페이지.

유일한 코드 파일: index.html (HTML·CSS·JS 단일 파일)

외부 서드파티 라이브러리 사용 안 함

localStorage로 히스토리 저장

Canvas로 룰렛 렌더링



\## 프로젝트 구조

\- index.html：유일 메인 코드 파일(HTML/CSS/JS 통합)

\- .claude/agents/page‑checker：검증용 서브에이전트

\- .claude/agents/copy‑helper：코드 일부 출력 보조 서브에이전트

\- .claude/settings.json：훅 설정



\## 코드 수정 규칙

수정 시 전체 파일이 아닌 변경 부분 위주로 제시한다.

innerHTML 사용 시 XSS 위험을 반드시 검토한다. 사용자 입력을 새로 다룰 때는 textContent를 우선한다.

삭제·초기화 등 되돌릴 수 없는 동작에는 confirm() 2단계 확인을 반드시 포함한다.

localStorage 읽기(JSON.parse)에는 try‑catch를 반드시 유지한다.

새 기능 추가 시 기존 구현된 기능을 깨뜨리지 않는다.

본 프로젝트는 수업 실습용 프로토타입이며 실제 서비스 제품이 아니다.



