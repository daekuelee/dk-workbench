# PROMPTS — 붙여 넣을 프롬프트 (〈 〉 만 채운다)

모든 프롬프트는 스킬과 op 이름을 부른다. 스킬이 절차를 갖고 있으므로 프롬프트는 짧아도 된다. 대신 내 판단(고른 것, 이유, 버린 것)은 꼭 내 말로 넣는다. 그 문장이 의도 관리의 증거다.

P-1 키트 가져오기 (터미널에서 직접, 또는 Codex 에게)
> git clone https://github.com/daekuelee/cofa-kit ~/kit && bash ~/kit/install.sh
> 그다음 Codex 를 끄고 새로 연다. AGENTS.md 와 스킬은 세션을 시작할 때 읽힌다.

P0 지금 어디인가 (새 세션, 길을 잃었을 때)
> setup status. docs/state.md 진행 표를 보고 다음에 할 op 하나만 말해 줘.

P1 시작
> setup read. README 와 자료를 읽고 docs/setup.md 를 써 줘. 코드는 만들지 마.

P2 안 고르기
> setup fill. 〈1〉안으로 간다. 이유는 〈한 줄〉.

P3 도메인 조사 (터미널 C)
> ./ask.sh research

P4 요구 정리 (파트너 답을 몇 개 받은 뒤)
> 파트너 답 〈Q1~Q4〉 를 questions.md 에 붙였다. 확인된 것만 plan.md 요구 R# 로 출처와 함께 써 줘. 확인 안 된 것은 assumptions.md A# 로. 코드는 만들지 마.

P5 S0 자료 실측
> rules/steps.md 대로 S0 을 해 줘. 코드는 만들지 말고 docs/ 만 써. 끝나면 explain decide 로 보고해.

P6 검증 설계와 채택 (B 유형, 터미널 C 뒤)
> ./ask.sh evals
> docs/roles/〈evals-HHMM〉.md 에서 〈E1, E2, E4〉 를 docs/evals.md 로 옮기고, 구조 검사는 verify.sh 에 더해. 〈E3〉 은 버린다. 이유는 〈한 줄〉.

P7 설계 대화 (하나씩, 답을 읽고 다음으로)
> explain decide 로: 구조를 어떻게 나눌까? 선택지 둘과 이유, 위험.
> explain decide 로: 사용자가 첫 화면에서 하는 일 세 가지는 무엇이어야 할까? 근거는 Q# 로.
> explain decide 로: 문제가 될 부분은 어디야? 자료, AI 출력, 파트너 기준과 어긋날 곳으로 나눠서.
> explain understand 로: 〈R2〉 하나를 골라, 요청이 어떤 파일을 지나 화면까지 가는지 그림으로.

P8 단계 시작
> 〈S1〉 을 시작한다. 목표: 〈한 줄〉. 관련 R#: 〈R1, R2〉. 기준 자료: 〈Q#, 파일〉. 금지: plan 밖 기능, 새 라이브러리. 성공 조건: 〈./verify.sh 의 S1 검사 PASS〉. 계획 5줄을 먼저 보여 줘.

P9 모르는 코드 이해
> explain understand 로: 〈이 요청〉 하나가 화면까지 가는 길을 실제 값으로 따라가 줘.

P10 리뷰 (터미널 C 뒤)
> ./ask.sh review
> worklog 에 적어: 채택 〈…〉, 기각 〈…〉, 이유 〈…〉. 채택한 것만 다음 S# 후보로 plan 에 넣어.

P11 바뀐 요구
> 파트너가 요구를 바꿨다 (〈Q7〉 원문 붙임). plan.md 의 R# 를 고치고, 영향받는 S# 와 검사를 explain decide 로 알려 줘. 코드는 아직 고치지 마.

P12 새 세션 이어가기
> docs/state.md 부터 읽고 지금 단계를 이어가. 다른 파일은 AGENTS.md 표대로 그때만 읽어.

P13 제출 전
> explain decide 로 제출 전 정리를 docs/reports/ 에 써 줘: 동작하는 것, 약한 곳, 다음 검증. docs/limits.md 에 약점 셋과 각 위험도 써.

P14 후속 문항 대비
> explain prep. 나는 이걸 보고 AI 없이 다시 말해 볼 거야.
