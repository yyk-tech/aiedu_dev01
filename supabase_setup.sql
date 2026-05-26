-- =============================================
-- 토론 의견 수집 앱 — Supabase 설정 SQL
-- Supabase SQL Editor에 붙여넣고 실행하세요
-- =============================================

-- 1. debate_records 테이블 생성
CREATE TABLE IF NOT EXISTS debate_records (
  id           uuid        DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at   timestamptz DEFAULT now(),
  topic        text        NOT NULL,
  school_level text        NOT NULL,
  student_name text        NOT NULL,
  stance       text        NOT NULL,
  reason       text,
  evidence     text,
  counter      text,
  learned      text
);

-- 2. Row Level Security 활성화
ALTER TABLE debate_records ENABLE ROW LEVEL SECURITY;

-- 3. 비로그인 사용자(anon)에게 데이터 삽입 허용
CREATE POLICY "anon_insert" ON debate_records
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- 4. 비로그인 사용자(anon)에게 데이터 조회 허용
CREATE POLICY "anon_select" ON debate_records
  FOR SELECT
  TO anon
  USING (true);
