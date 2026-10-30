#!/usr/bin/env bash
# 합의한 성공 조건의 실행 검사. 관련 검사를 유지하고 결과를 보고한다.
# 기대값은 앱 코드가 아니라 데이터를 직접 집계한 별도 계산에서 가져온다.
set -u
BASE=${BASE:-http://localhost:8000}
PASS=0; FAIL=0
check() { local name="$1"; shift
  if eval "$@" >/dev/null 2>&1; then echo "PASS  $name"; PASS=$((PASS+1))
  else echo "FAIL  $name"; FAIL=$((FAIL+1)); fi; }

# ---- 검사 목록 (S#/R# 이름을 붙인다) ----
# check "S1 서버가 응답한다"        "curl -sf $BASE/"
# check "R2 밀린 티켓 수 = 기대값"   "[ \"\$(curl -s $BASE/api/summary | python3 -c 'import sys,json;print(json.load(sys.stdin)[\"overdue\"])')\" = 0 ]"

if [ "$PASS" -eq 0 ] && [ "$FAIL" -eq 0 ]; then
  echo "검사 없음: 성공 조건에 필요한 검사를 먼저 정한다."; exit 2
fi
echo "PASS=$PASS FAIL=$FAIL"; [ "$FAIL" -eq 0 ]
