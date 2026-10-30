# setup read — README 를 읽고 docs/setup.md 를 쓴다

## 0. 준비 (읽기만 한다)
1. SITUATION.md 를 읽는다. 파트너가 어떻게 답하는지, 무엇이 평가되는지를 여기서 안다.
2. PROFILE.md 를 읽는다. 결과를 읽는 사람의 이해도를 여기서 안다.
3. references/rulings.md 를 읽는다.
4. README.md 를 처음부터 끝까지 읽는다. 줄 번호를 붙여 읽는다 (`nl -ba README.md`).
5. 작업 폴더의 파일 목록을 본다 (`find . -maxdepth 2 -not -path './.git*' -not -path './.agents*'`). 자료 파일을 찾는다.

## 0-b. 환경을 확인한다 (읽기만, 설치하지 않는다)
아래 명령의 결과를 docs/setup.md "환경 확인" 표에 적는다. 결과마다 설계에 주는 영향을 한 줄 붙인다.
- 언어: `python3 --version`, `node --version`
- 이미 있는 패키지: `python3 -c "import fastapi, uvicorn"`, `python3 -c "import flask"` (없으면 "없음")
- 설치가 되는지: `pip --version`, `curl -sI https://pypi.org/simple/ | head -1` (응답이 없으면 표준 라이브러리 안으로 간다)
- 앱 안에서 쓸 AI: `env | grep -iE 'openai|anthropic|api_key|llm|model' | sed 's/=.*/=<값 있음>/'`. 값은 절대 적지 않는다. 없으면 Helper 에게 물을 질문으로 넘긴다.
- 포트: `ss -ltn 2>/dev/null | head` 로 이미 쓰는 포트를 본다.
- 확인하지 못한 것은 "Helper 에게 물을 것" 목록에 넣는다.

## 1. 자료를 직접 센다 (자료가 있을 때)
- 표 자료(csv, tsv, json 목록)는 Python 표준 라이브러리로 센다. 예: `python3 -c "import csv; r=list(csv.DictReader(open('<파일>'))); print(len(r), list(r[0]))"`.
- 열마다 센다: 빈칸 수, 서로 다른 값 수와 상위 값, 형식이 섞인 값(날짜 구분자, 대소문자, 언어), 중복 행과 중복 키, 오늘보다 뒤인 날짜, 개인정보처럼 보이는 값(전화번호, 메일).
- 센 명령과 결과를 그대로 적어 둔다. 이 값들이 나중에 검증의 기대값 후보가 된다.
- 자료가 없으면 "자료 없음" 이라고 쓰고, 앱이 쓸 자료를 누가 만드는지를 질문 표에 넣는다.

## 2. 문제 유형을 고른다
- references/archetypes.md 의 신호 칸과 README 줄을 맞춰 본다.
- 하나를 고르고 근거 줄(README:줄)을 붙인다. 둘이 섞이면 주 유형과 보조 유형을 쓴다.

## 3. docs/setup.md 를 쓴다
templates/setup.md 의 순서와 칸을 그대로 쓴다. 견본(templates/example-setup.md)의 밀도를 따른다.
1. 결론 한 문장, 둘째 줄에 "정할 것: 아키텍처 안 (추천: N안, 이유 한 문장)".
2. 상황 한 문단과 그림: 누가, 어떤 장면에서, 무엇이 불편해서 이 요청을 했나. 아직 숨어 있는 것은 무엇인가. README 에 없는 것은 "모름" 으로 쓴다. 지어내지 않는다.
3. 상황 시트 열 칸: 칸 / 내용 / 출처(README:줄). 없으면 "빈칸".
4. 문제 유형과 근거.
5. 입력 형태: 사용자가 앱에 넣는 것과 앱이 읽는 자료. 1에서 센 표를 붙인다.
6. 아키텍처 안 둘: archetypes.md 의 그 유형 칸에서 시작해 이번 자료와 입력에 맞게 고친다. 표: 안 / 구조 한 줄 / 왜 / 위험 / 첫 동작본까지 시간. 추천 하나와 이유.
7. 질문 표: references/question-ladder.md 를 따른다. 8개 이하. 빈칸마다 하나 이상.
8. 검증 방식 초안: 유형 칸의 검증 방식을 이번 과제 말로 바꾼다. 기대값의 출처를 쓴다.
9. 환경 확인 표와 Helper 에게 물을 것 (0-b 결과).
10. 모르는 것: 확인 안 된 것과 확인 방법. 확인 방법은 질문 번호(파트너), Helper 질문, 명령 중 하나다.

## 4. 끝낸다
- 90줄을 넘기지 않는다. 넘으면 자료 실측 표를 docs/reports/<HHMM>-data.md 로 빼고 링크한다.
- docs/state.md 진행 표에 한 줄을 남긴다.
- 터미널에는 네 줄만 쓴다: 쓴 파일, 결론, 정할 것, 다음 할 일("안을 고르면 setup fill").
- 멈춘다. 사람이 안을 고를 때까지 다른 파일을 고치지 않는다.
