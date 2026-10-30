#!/usr/bin/env bash
# 검증 묶음. 단계(S#)마다 검사를 하나 이상 더하고, 매 단계 끝에 전체를 돌린다.
# 기대값은 앱 코드가 아니라 데이터를 직접 집계한 별도 계산(S0)에서 가져온다.
set -u
BASE=${BASE:-http://localhost:8000}
PASS=0; FAIL=0
check() { local name="$1"; shift
  if eval "$@" >/dev/null 2>&1; then echo "PASS  $name"; PASS=$((PASS+1))
  else echo "FAIL  $name"; FAIL=$((FAIL+1)); fi; }

# ---- 검사 목록 (S#/R# 이름을 붙인다) ----
# check "S1 서버가 응답한다"        "curl -sf $BASE/"
# check "R2 밀린 티켓 수 = 기대값"   "[ \"\$(curl -s $BASE/api/summary | python3 -c 'import sys,json;print(json.load(sys.stdin)[\"overdue\"])')\" = 0 ]"

echo "PASS=$PASS FAIL=$FAIL"; [ "$FAIL" -eq 0 ]
