---
title: "GeneBench-Pro — AI는 진짜 생물학 연구를 할 수 있을까?"
date: 2026-07-01T01:00:00
draft: false
tags: ["AI", "벤치마크", "생물정보학", "OpenAI"]
categories: ["AI"]
---

OpenAI가 **GeneBench-Pro**를 공개했다. AI가 계산생물학(computational biology) 연구에서
필요한 **판단력**을 갖췄는지 측정하는 벤치마크다.
단순 지식 암기가 아니라, **실제 연구처럼 데이터를 분석하고 방법을 고르는 능력**을 본다.

> ⚠️ 아래 수치는 OpenAI 발표 및 이를 인용한 보도 기준. 개인 해석은 넣지 않았다.

---

## 무엇을 측정하나

- **129개 문제** — 유전체학(genomics), 정량생물학, 중개의학(translational medicine)
- 각 문제는 **데이터셋 + 실험 맥락 + 연구 질문**을 준다.
  AI는 데이터를 분석하고, 적절한 분석 방법을 선택해, 최종 결론을 내야 한다.
- 문제마다 격리된 작업공간에 데이터 파일과 표준 생물정보학 스택(**Python, PLINK 2.0**)이 주어진다.

즉 "정답 암기"가 아니라 ==지저분한 실제 생물 데이터에서 올바른 분석 경로를 고르는 판단==을 평가한다.

## 결과 — 최고 모델도 31.5%

최대 추론 수준에서의 통과율(pass rate):

| 모델 | 통과율 |
|---|:---:|
| GPT-5.6 Sol Pro | **31.5%** |
| GPT-5.6 Sol | 28.7% |
| Claude Opus 4.8 (비 GPT 최고) | 16.0% |

가장 잘한 모델도 ==약 31.5%==. 즉 현재 최상위 AI도 실제 생물학 연구 판단에서
**대부분의 문제를 통과하지 못했다.**

## 신뢰성 검증

129문제 중 **82문제**를 외부 전문가(대학원생·박사후연구원·산업계 과학자·교수)에게 검토받았다.
문제가 현실적인 생물 연구를 반영하는지, 의도한 정답을 신뢰성 있게 식별할 수 있는지를 확인했다.

## 공개 범위

- **대표 문항 10개** → Hugging Face 오픈소스
- **50문항 부분셋** → Artificial Analysis에 제공(독립 벤치마킹용)

---

## 요약

| 항목 | 내용 |
|---|---|
| 무엇 | 계산생물학 연구 판단력 벤치마크 |
| 규모 | 129문제 (유전체·정량생물학·중개의학) |
| 방식 | 데이터+맥락+질문 → 분석·방법선택·결론 (Python, PLINK 2.0) |
| 최고 점수 | GPT-5.6 Sol Pro 31.5% |
| 검증 | 82문제 외부 전문가 리뷰 |
| 공개 | HF 10문항 + Artificial Analysis 50문항 |

---

### 참고

- OpenAI — [Introducing GeneBench-Pro](https://openai.com/index/introducing-genebench-pro/)
- [TechFocus24 정리](https://techfocus24.com/openai-unveils-genebench-pro-to-measure-ai-performance-in-computational-biology/)
- [Investing.com 보도](https://www.investing.com/news/stock-market-news/openai-introduces-genebenchpro-to-test-ai-research-judgment-93CH-4768434)
