# PROMPTS — 필요할 때 고르는 요청 예문

번호는 찾기 위한 이름이다. 전부 순서대로 실행하지 않는다. Codex 가 현재 상태에 맞는 예문을 구체화해 답 끝에 주면, 사용자는 판단이 필요한 〈 〉 만 채운다. 스킬은 `$이름` 으로 부른다.

P-1 키트 가져오기 (과제 폴더 터미널)
> git clone --depth 1 https://github.com/daekuelee/dk-workbench .kit && bash .kit/install.sh && rm -rf .kit
> 그다음 Codex 를 새로 연다.

P0 지금 어디인가 (끊긴 세션은 `codex resume --last`, 컨텍스트는 `/status`)
> $setup status. 현재 위치와 다음에 할 일 하나를 알려 줘.

P1 시작 준비
> $setup read. README 를 읽고 이번 과제의 목표·제약·자료 위치·환경과 미확인을 docs/setup.md 에 정리해 줘.

P2 준비 내용 반영
> $setup fill. 준비 내용을 반영해 줘. 고칠 점은 〈없음 또는 수정할 사실〉.

P2-a 과제 대화 시작
> 지금 이해한 업무 흐름과 가장 중요한 빈 곳을 먼저 보여 줘. 내가 틀린 부분을 고칠게. 조사나 구현은 아직 시작하지 마.

P3 필요한 조사
> $research domain. 〈조사 질문〉을 알아봐 줘. 이 답으로 〈정할 것〉을 판단하려고 해.
> 기술 선택이면 `$research tech` 를 쓴다. 별도 관점이 필요하면 조사 질문을 정한 뒤 터미널에서 `./ask.sh research` 를 쓴다.

P4 파트너 답 반영
> docs/questions.md 에 붙인 〈Q#〉 원문을 반영해 줘. 확인된 요구는 docs/plan.md 에 출처와 함께, 판단에 써야 할 미확인은 docs/assumptions.md 에 남겨. 코드는 아직 고치지 마.

P5 필요한 자료 확인
> 〈판단 또는 R# 검증〉에 필요한 〈항목〉을 자료에서 확인해 줘. 기존 실측은 재사용하고 명령과 결과를 남겨 줘.

P6 검증 설계의 별도 의견이 필요할 때
> 터미널에서 `./ask.sh evals`
> docs/roles/〈evals-HHMM〉.md 에서 〈채택할 내용〉을 docs/evals.md 에 반영해 줘. 이유는 〈내 이유〉. 합의한 실행 검사는 verify.sh 에 반영해 줘.

P7 설계 대화 (지금 필요한 질문 하나를 고른다)
> $explain decide. 〈정할 설계〉의 선택지와 차이·근거·위험을 보여 줘.
> $explain decide. 첫 화면에서 사용자가 할 일은 무엇이어야 할까? 파트너 답을 근거로 보여 줘.
> $explain decide. 현재 안에서 가장 걱정되는 부분과 확인할 방법을 보여 줘.

P8 단계 시작
> 〈S#〉를 시작한다. 목표: 〈한 줄〉. 관련 요구: 〈R#〉. 성공 조건: 〈관찰 가능한 결과〉. 계획을 짧게 보여 줘. 승인 뒤 구현해.

P9 코드 이해
> $explain understand. 〈요청 또는 동작〉이 화면까지 가는 길을 실제 값으로 따라가 줘.

P10 독립 리뷰가 필요할 때
> 터미널에서 `./ask.sh review`
> docs/roles/〈review-HHMM〉.md 에서 채택은 〈…〉, 기각은 〈…〉, 이유는 〈…〉다. worklog 에 적고 채택한 변경을 plan 의 후보로 반영해 줘.

P11 바뀐 요구
> 파트너 답 〈Q# 원문〉으로 요구가 바뀌었다. docs/plan.md 와 영향받는 작업·검사를 정리해 줘. 코드는 아직 고치지 마.

P12 이어가기
> docs/state.md 부터 읽고 요청했던 작업을 이어가. 필요한 근거는 AGENTS.md 의 파일 안내로 찾아.

P13 제출 전
> 현재 동작·검증 결과와 남은 약점을 정리해 줘. docs/limits.md 에 실제 약점과 영향·다음 검증을 남겨.

P14 후속 문항 대비
> $explain prep. 내가 AI 없이 설명할 수 있도록 실제 결정과 동작의 근거를 모아 줘.
