---
title: "Claude Science — 연구자를 위한 AI 워크벤치"
date: 2026-07-01T02:00:00
draft: false
tags: ["AI", "Anthropic", "연구", "생물정보학"]
categories: ["AI"]
---

Anthropic이 **Claude Science**를 공개했다(6/30). 흩어진 연구 도구를 하나의 환경으로 통합한
**AI 워크벤치**다. 연구자가 자주 쓰는 도구·패키지를 통합하고, **재현 가능한 산출물**을 만들며,
컴퓨팅 자원에 유연하게 접근하게 해준다.

> ⚠️ 아래는 Anthropic 발표 페이지 기준 사실 정리. 개인 해석은 넣지 않았다.

---

## 주요 기능

- **재현 가능한 결과물** — 코드와 메시지 이력이 그대로 남는 figure·논문 초안 생성
- **네이티브 렌더링** — ==3D 단백질 구조, 지놈 브라우저 트랙, 화학 구조==를 바로 표시
- **컴퓨팅 관리** — 노트북, HPC 클러스터, on-demand GPU를 오가며 자원 관리
- **리뷰어 에이전트** — 인용과 계산을 검증해 오류를 표시·수정
- **세션 fork** — 서로 다른 분석 접근을 갈라서 비교

## 지원 과학 도메인 · 통합

사전 구성된 분야: **유전체학(genomics), 단일세포(single-cell), 단백질체학(proteomics),
구조생물학, 케모인포매틱스**. ==60개 이상의 큐레이션된 skill·connector== 포함.

- **NVIDIA BioNeMo Agent Toolkit 통합** — Evo 2, Boltz-2, OpenFold3 등 모델 접근
- **데이터베이스 연결** — UniProt, PDB, Ensembl, ChEMBL

## 가용성

- **macOS · Linux 베타**
- **Pro · Max · Team · Enterprise** 사용자 대상
- 학계·비영리 연구실용 **할인 Team 플랜** 별도 제공(아래)

---

## 연구실용 Claude Team 플랜

학술기관·비영리 연구실을 위한 **할인 Team 구독**.

| 요금제 | 가격 | 특징 |
|---|---|---|
| Standard | **$15 / user / 월** | 기본 |
| Premium | **$75 / user / 월** | 사용량 5배, 장기 분석 한도 ↑ |

- 최소 **2석**, 세금 별도
- 포함: **Claude Code**(터미널에서 스크립트 작성·디버그·실행), **Claude Cowork**(협업 워크스페이스),
  공유 프로젝트·파일, Research, 중앙 결제·관리, **SSO**
- 통합: PubMed, Benchling, 10X Genomics Cloud, BioRxiv, Google Drive, Slack, ChEMBL,
  Open Targets, Google Scholar, BioRender, Synapse 등

**자격**: 학술기관·비영리 연구실. ==생의학·기초과학(화학·수학·전산·물리) 우선==.
PI(책임연구자) attestation으로 검증.

**데이터**: ==대화·업로드 파일·연구 데이터로 학습하지 않음==. 관리자가 보존 정책 설정 가능.

## 그랜트

- 신청: **~7/15**까지, 최대 **$30,000 크레딧**
- 프로젝트 기간: **9/1 ~ 12/1**

---

## 요약

| 항목 | 내용 |
|---|---|
| 무엇 | 연구용 통합 AI 워크벤치 |
| 도메인 | 유전체·단일세포·단백질체·구조생물·케모인포 |
| 통합 | BioNeMo(Evo2/Boltz-2/OpenFold3), UniProt·PDB·Ensembl·ChEMBL |
| 특징 | 재현 산출물, 리뷰어 에이전트, 세션 fork |
| 연구실 플랜 | Standard $15 / Premium $75 (user/월), 최소 2석 |
| 그랜트 | ~7/15 신청, 최대 $30,000 크레딧 |

---

### 참고

- Anthropic — [Introducing Claude Science](https://www.anthropic.com/news/claude-science-ai-workbench)
- Claude — [Team plan for research labs](https://claude.com/programs/claude-team-plan-for-research-labs)
