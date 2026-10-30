#!/usr/bin/env bash
# 사용: 과제 작업 폴더에서, Codex 밖의 터미널에서 직접 (README 의 시작 한 줄)
# 키트를 이 폴더에 복사한다. 이미 있는 파일은 덮어쓰지 않는다.
# Codex 샌드박스 안에서 돌리면 .agents 와 .git 이 읽기 전용이라 스킬과 git 이 빠진다. 그래서 마지막에 확인한다.
set -u
K=$(cd "$(dirname "$0")" && pwd)
[ -f AGENTS.md ] && ! cmp -s AGENTS.md "$K/AGENTS.md" && echo "주의: 이 폴더에 다른 AGENTS.md 가 있어 덮지 않았다. 내용을 보고 정한다."
git rev-parse --git-dir >/dev/null 2>&1 || git init -q 2>/dev/null
mkdir -p docs
cp -n "$K"/docs-template/*.md docs/ 2>/dev/null
cp -rn "$K/roles" "$K/rules" "$K/.agents" . 2>/dev/null
for f in AGENTS.md PROFILE.md PLAYBOOK.md SITUATION.md PROMPTS.md verify.sh ask.sh setup-parallel.sh; do cp -n "$K/$f" . 2>/dev/null; done
chmod +x verify.sh ask.sh setup-parallel.sh 2>/dev/null
ok=1
for p in .agents/skills/setup/SKILL.md .agents/skills/research/SKILL.md .agents/skills/explain/SKILL.md AGENTS.md docs/state.md; do
  [ -f "$p" ] || { echo "실패: $p 가 없다."; ok=0; }
done
git rev-parse --git-dir >/dev/null 2>&1 || { echo "실패: git 저장소를 만들지 못했다."; ok=0; }
if [ $ok = 0 ]; then
  echo "Codex 안에서 돌린 것 같다. Codex 밖의 터미널에서 README 의 시작 한 줄을 다시 돌린다."; exit 1
fi
echo "키트를 복사했다: AGENTS.md, PROMPTS.md, .agents/skills (setup research explain), docs/, rules/, roles/, verify.sh, ask.sh"
echo "다음: Codex 를 새로 연다 (AGENTS.md 와 스킬은 세션을 시작할 때 읽힌다)."
