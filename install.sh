#!/usr/bin/env bash
# 사용: 과제 작업 폴더에서  bash ~/kit/install.sh
# 키트를 이 폴더에 복사한다. 이미 있는 파일은 덮어쓰지 않는다.
set -eu
K=$(cd "$(dirname "$0")" && pwd)
mkdir -p docs
cp -n "$K"/docs-template/*.md docs/
cp -rn "$K/roles" "$K/rules" "$K/.agents" .
for f in AGENTS.md PROFILE.md PLAYBOOK.md SITUATION.md verify.sh ask.sh; do cp -n "$K/$f" .; done
chmod +x verify.sh ask.sh
echo "키트를 복사했다: $(ls -d AGENTS.md .agents docs rules roles | tr '\n' ' ')"
echo "다음: Codex 를 새로 연다 (AGENTS.md 와 스킬은 세션을 시작할 때 읽힌다)."
