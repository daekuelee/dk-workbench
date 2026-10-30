---
name: explain
description: 코드·개념을 이해하거나 근거로 선택할 때 설명한다. understand는 이해, decide는 판단, prep은 후속 문항 대비에 쓴다.
---
# explain — 이해하고 판단할 수 있게 설명한다

사용자의 질문과 이미 있는 근거에서 시작한다. PROFILE.md의 이해도에 맞춰, 질문에 답하거나 선택의 차이가 드러나게 쓴다. 보고 형식을 채우려고 새 조사나 결정거리를 만들지 않는다.

## op
| op | 입력 | 읽을 절차 |
|---|---|---|
| understand | 질문과 설명할 코드·개념·동작 | [ops/understand.md](ops/understand.md) |
| decide | 지금 정할 일과 근거·선택지 | [ops/decide.md](ops/decide.md) |
| prep | 실제 구현·결정·변경·검증 기록 | [ops/prep.md](ops/prep.md) |

해당 op 파일을 읽고 수행한다. 과제의 자료·환경 정보가 필요하면 docs/context.md를 읽는다. 짧은 질문에 전체 보고 양식을 적용하지 않는다.

## 표현과 출력
- 결론이나 직접 답을 먼저 쓴다. 실제로 정할 것이 있으면 선택할 내용과 추천 근거를 바로 보여 준다.
- 한 문장에 사실 하나를 담고 동사를 쓴다. 새 낱말은 쓰기 전에 풀어 준다. PROFILE에서 익숙한 영역은 기초 설명을 생략한다.
- 관계를 이해하는 데 도움이 되면 그림, 비교에는 표, 동작에는 실제 값으로 따라가기를 쓴다. 모든 답에 세 가지를 다 넣지 않는다.
- 상세 보고는 에디터의 Markdown 미리보기에서 읽도록 docs/reports에 쓴다. 채팅에는 결론과 파일 링크를 남긴다. 선택이 필요하면 선택지의 차이·추천 이유는 채팅에도 보인다.
- 읽지 않은 대상과 확인 못 한 동작을 아는 것처럼 쓰지 않는다. 필요한 새 조사는 부족한 근거로 표시하고 사용자와 범위를 정한다. 질문한 동작을 한 번 실행하는 국소 확인은 할 수 있다.
- 메인 세션은 완료한 op를 state에 한 줄 기록한다. 읽기 전용 역할은 형식을 참고해 답만 반환하고 파일을 쓰지 않는다.
- 사용자의 판단·이유·답안은 대신 쓰지 않는다. 칭찬·다짐·끝의 복습 질문은 붙이지 않는다.

## 필요할 때 참고
- [references/anchors.md](references/anchors.md): 낯선 개념의 비유. 도움이 될 때만 쓰고 다른 점도 밝힌다.
- [templates/example-understand.md](templates/example-understand.md), [templates/example-decide.md](templates/example-decide.md): 설명의 구체성과 근거 밀도 견본. 칸 수와 분량은 의무가 아니다.
- [references/rulings.md](references/rulings.md): 과거 판정의 근거. 현재 절차는 SKILL과 ops를 따른다.
