---
name: setup
description: 과제를 처음 받았을 때 쓴다. README 와 자료를 읽고 상황, 문제 유형, 입력 형태, 아키텍처 안 둘, 현업 파트너에게 물을 질문 표를 docs/setup.md 에 쓴 뒤 멈춘다(read). 사용자가 안을 고르면 키트를 이번 과제에 맞게 채운다(fill). "setup", "시작하자", "README 읽고 정리해", "setup fill", "안 N 으로 간다".
---
# setup — 과제의 틀을 잡는다

## 무엇을 하나
과제는 매번 다르지만 상황은 같다 (SITUATION.md). 이 스킬은 README 를 읽어 그 상황 위에 이번 과제를 올려놓는다. 결과는 두 가지다. 사람이 읽고 판단할 docs/setup.md, 그리고 이번 과제에 맞게 채워진 키트 파일들이다.

## 입력과 출력
| op | 입력 | 출력 | 멈추는 곳 |
|---|---|---|---|
| read | README.md, 자료 폴더(data/, uploads/ 등), SITUATION.md, PROFILE.md | docs/setup.md (templates/setup.md 모양) | 파일을 쓰고 "정할 것: 아키텍처 안" 을 보인 뒤 |
| fill | 사용자가 고른 안과 이유 한 줄, docs/setup.md | AGENTS.md 스택 칸, docs/plan.md, docs/questions.md, docs/state.md, docs/context.md (이번 과제 칸) | 바꾼 파일 목록을 보고한 뒤 |
| status | docs/state.md 진행 표 | 다음 op 한 줄 | 바로 |

## 자유도 — 절차는 기준선이다
이 스킬의 절차, 칸, 표, 유형표는 출발점이다. 이번 과제에 더 맞는 방법이 보이면 바꿔도 된다. 너는 이 과제를 처음 읽는 사람보다 더 잘 정리할 수 있다.
- 바꿔도 되는 것: 칸을 더하거나 합치기, 질문 수를 늘리기, archetypes.md 밖의 안을 내기, 유형을 섞기, 계단을 다르게 짜기, 순서를 바꾸기, 키트 파일(rules, PLAYBOOK, verify.sh)에 더할 것을 제안하기.
- 바꾸면 docs/setup.md 끝 "절차에서 바꾼 것" 칸에 무엇을 왜 바꿨는지 한 줄씩 적는다.
- 바꾸지 않는 것: 맨 위 두 줄(결론, 정할 것), read 뒤에 멈추기, 코드와 설치 금지, 키 값을 적지 않기, 주장마다 출처, 사람의 선택 없이 fill 하지 않기.
- fill 에서도 같다. PLAYBOOK 의 흐름과 계단은 이번 과제에 맞게 고쳐서 옮긴다. 키트 규칙 파일을 바꾸고 싶으면 바꾸지 말고 제안으로 보고한다.

## 절차
- op 를 시작하기 전에 ops/<op>.md 를 끝까지 읽는다. 그 파일이 절차의 주인이다.
- read 와 fill 사이에는 반드시 사람의 선택이 있다. 선택 없이 fill 하지 않는다.
- 코드는 만들지 않는다. 설치도 하지 않는다.
- op 가 끝나면 docs/state.md 진행 표에 한 줄을 남긴다: 시각 | setup.<op> | 완료 | 남긴 파일 | 다음.

## 파일
- ops/read.md, ops/fill.md — 절차 (status 는 절차 파일이 없다: docs/state.md 진행 표의 마지막 줄과 다음 칸을 읽어 한 줄로 답한다)
- templates/setup.md — docs/setup.md 의 뼈대
- templates/example-setup.md — 다른 과제로 만든 견본. 모양과 밀도만 따른다. 내용은 가져오지 않는다.
- references/archetypes.md — 문제 유형 A~D, 유형별 안, 계단, 검증, 함정
- references/question-ladder.md — 파트너에게 묻는 법과 질문 표 쓰는 법
- references/rulings.md — 지금까지의 판정 기록. 같은 실수를 반복하지 않는다.

## 읽는 사람
결과를 읽는 사람은 PROFILE.md 에 있다. 문장 규칙은 explain 스킬을 따른다.
