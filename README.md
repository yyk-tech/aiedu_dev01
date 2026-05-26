# 토론 의견 수집

중등 기술수업용 실시간 토론 의견 수집 앱입니다.

## 기능

- 교사가 토론 주제와 학교급을 설정
- 학생이 입장(찬성/반대/중립)과 의견을 작성·제출
- 교사가 전체 학생 의견을 실시간 조회, 입장별 필터 및 통계 확인
- 학교급(초등·중등·고등)에 따라 항목 언어가 자동 변경

## 시작하기

### 1. Supabase 테이블 생성

Supabase 프로젝트의 **SQL Editor**에서 `supabase_setup.sql` 파일 내용을 붙여넣고 실행합니다.

### 2. config.js 설정

`config.js` 파일을 열고 Supabase 프로젝트의 URL과 anon key를 입력합니다.

```js
const SUPABASE_URL = 'https://your-project-id.supabase.co';
const SUPABASE_ANON_KEY = 'your-anon-key';
```

> **주의**: `config.js`는 `.gitignore`에 포함되어 있어 GitHub에 올라가지 않습니다.

### 3. GitHub Pages 배포

1. GitHub에 `aiedu-dev01` 레포지토리 생성
2. 파일 푸시 (config.js 제외)
3. Settings → Pages → Source: `main` 브랜치 선택

## 파일 구조

```
aiedu-dev01/
├── index.html          # 메인 앱 (3개 화면 단일 파일)
├── config.js           # Supabase 자격증명 (gitignore 포함)
├── supabase_setup.sql  # DB 테이블 생성 SQL
├── .gitignore
└── README.md
```

## 기술 스택

- HTML / CSS / JavaScript
- Supabase JS v2 (CDN)
- GitHub Pages
