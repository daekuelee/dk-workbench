# dk-workbench

Codex 로 업무형 과제를 푸는 개인 키트입니다.

시작 (과제 폴더의 터미널에서):
```
git clone --depth 1 https://github.com/daekuelee/dk-workbench .kit && bash .kit/install.sh && rm -rf .kit
```
그다음 Codex 를 새로 열고 PROMPTS.md 의 P1 부터.

## 키트를 고칠 때의 규칙
- 늘 읽히는 것만 짧게 둔다: AGENTS.md, 스킬의 name 과 description.
- 나머지 md 는 파일 하나에 100줄 안팎, 많아도 200줄까지 쓴다. 넘으면 주제별로 나눈다.
- 스킬은 이 모양을 따른다: SKILL.md(라우터: 언제, 입력과 출력, 자유도, 절차 규칙, 파일 목록) · ops/<op>.md(절차 하나씩 끝까지) · templates/(뼈대와 다른 과제로 만든 견본) · references/(표와 기준) · references/rulings.md(틀린 것과 이제 어떻게 하나, 날짜와 함께 아래로 쌓음).
- 틀린 것을 고치면 그 스킬의 rulings.md 에 한 줄을 더한다.
