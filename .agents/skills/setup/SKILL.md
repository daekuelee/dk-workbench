---
name: setup
description: 과제의 시작 맥락을 준비하거나 준비 내용을 반영할 때 쓴다. 설치만 하는 요청은 포함하지 않는다.
---
# setup — 공통 키트에 이번 과제의 맥락을 연결한다

README에 명시된 목표·제약, 자료 위치와 환경을 준비한다. 다음 대화가 같은 기초 정보를 다시 찾지 않고 시작할 수 있으면 된다. 숨은 요구 조사와 설계·구현은 이후 과제 대화에서 한다.

## op
| op | 입력 | 남기는 것 | 끝나는 곳 |
|---|---|---|---|
| read | README, 파일 목록, 확인 가능한 환경 | docs/setup.md와 state 진행 기록 | 준비 내용을 보여 주고 사용자 확인을 기다린다 |
| fill | 준비 내용에 대한 사용자 확인·수정 | context·plan·questions·state 중 필요한 기록 | 반영 결과를 보고하고 끝낸다 |
| status | docs/state.md | 현재 위치와 다음 후보 | 읽어서 답한다. 기록을 추가하거나 다음 작업을 실행하지 않는다 |

read와 fill을 하기 전에 해당 ops 파일을 끝까지 읽는다. 사용자가 read만 요청했다면 fill로 넘어가지 않는다. 명확한 확인을 받았으면 같은 확인을 다시 요구하지 않는다. 기존 작업 기록이 있으면 보존하고 달라진 부분만 반영한다.

## 경계와 자유도
- README의 사실과 미확인을 구분하고 출처를 붙인다. 사용자 선택·이유는 만들어 쓰지 않는다.
- 코드 작성과 패키지 설치는 하지 않는다. 키 값은 출력하지 않는다.
- 과제 유형·아키텍처 두 안·전수 실측·전체 계단은 준비의 필수 항목이 아니다. 사용자가 별도로 비교를 요청했다면 그 질문에는 답하되 준비 사실과 제안을 구분한다.
- 보고 항목은 이번 과제에 맞게 줄이거나 합칠 수 있다. 명시 사실·환경의 확인 상태·다음에 확인할 것을 읽을 수 있게 남긴다.
- 완료한 read·fill은 메인 세션이 state 진행 표에 한 줄 남긴다. 설치는 install.sh의 기능이다.

## 필요한 파일
- [ops/read.md](ops/read.md), [ops/fill.md](ops/fill.md): 각 op의 실제 절차.
- [templates/setup.md](templates/setup.md), [templates/example-setup.md](templates/example-setup.md): 준비 보고의 틀과 다른 과제 견본. 내용과 분량을 복제하지 않는다.
- [references/question-ladder.md](references/question-ladder.md): 파트너 질문을 작성할 때. 메인 대화와 research에서도 참고한다.
- [references/archetypes.md](references/archetypes.md): 이후 설계에서 후보가 필요할 때만 보는 참고.
- [references/rulings.md](references/rulings.md): 과거 판정의 근거. 현재 행동은 SKILL과 ops를 따른다.

설명은 PROFILE.md의 이해도에 맞춘다. 상세한 설명이 필요할 때 explain을 사용한다. 단순 준비 보고에 explain의 모든 칸을 추가하지 않는다.
