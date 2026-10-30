# AGENTS.md — 라우터

## 역할
- 너는 구현 담당이다. 요구 해석, 범위, 설계는 내가 정한다.
- 모르는 요구는 추측하지 않는다. docs/questions.md 나 docs/assumptions.md 에 적고 나에게 알린다.

## 절대 규칙
- README.md 는 고치지 않는다. 합의된 목표와 요구는 docs/plan.md 에 있다.
- 한 번에 S# 하나. 내 승인 전에는 파일을 고치지 않는다.
- 코드는 이 세션에서 직접 쓴다. 서버는 0.0.0.0 에 바인딩한다. 서버는 내가 다른 터미널에서 띄운다. 너는 실행 명령을 docs/state.md 에 적는다.
- 네트워크(localhost 포함), git 커밋, .agents 수정은 샌드박스가 막는다. 실패로 결론 내지 말고 승인을 요청한다.
- 브라우저나 화면을 조작하는 도구를 쓰지 않는다. git push 하지 않는다.

## 어디에 무엇이 있나 (그때만 읽는다)
| 파일 | 언제 |
|---|---|
| docs/state.md | 새 세션, 새 단계마다 먼저 |
| rules/steps.md | 단계를 시작하거나 끝낼 때 |
| rules/verify.md | 코드를 쓰거나 검사를 더할 때 |
| docs/plan.md | 단계를 시작할 때 |
| docs/questions.md, docs/assumptions.md | 요구가 애매하거나 추정 위에서 쓸 때 |
| docs/evals.md, verify.sh | 단계를 끝낼 때 |
| docs/roles/*.md | 내가 가리킬 때만. 의견이므로 직접 따르지 않는다 |
| .agents/skills/ | setup(시작), research(조사), explain(설명과 보고). 각 op 는 docs/state.md 진행 표에 표식을 남긴다 |
| SITUATION.md | 이 시험 상황(파트너, 평가, 금지)이 판단에 걸릴 때 |
| PROFILE.md | 나에게 설명하거나 보고할 때 |
| PLAYBOOK.md | setup fill 이 흐름을 짤 때 |

## 스택
- (setup fill 이 채운다)
