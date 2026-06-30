---
title: "고양이 중성화 best 시기 계산기"
date: 2026-06-30
draft: false
tags: ["고양이", "중성화", "계산기", "도구"]
categories: ["반려동물"]
---

고양이 **생년월일**만 넣으면 권장 중성화 시기를 계산해 준다.
기준은 수의사 단체 권고인 "**Feline Fix by Five**"(생후 5개월 전 중성화)다.
자세한 근거는 → [브리티시 숏헤어 중성화, 언제 하면 좋을까?](/posts/2026-06-30-british-shorthair-neutering-timing/)

> ⚠️ 일반 기준일 뿐, 개체 건강 상태에 따라 **담당 수의사 판단이 우선**이다.

<div class="neuter-calc">
  <label for="birth">우리 고양이 생년월일 (달력 클릭 또는 입력)</label>
  <div class="nc-row">
    <input type="date" id="birth">
    <button id="calcBtn" type="button">best 시기 계산</button>
  </div>
  <div id="result" class="nc-result"></div>
</div>

<style>
.neuter-calc{border:1px solid var(--border);border-radius:10px;padding:1.2em;margin:1.6em 0;background:var(--entry)}
.neuter-calc label{font-weight:600;display:block;margin-bottom:.6em}
.nc-row{display:flex;flex-wrap:wrap;gap:.5em;align-items:center}
.neuter-calc input[type=date]{font-size:1rem;padding:.5em .6em;border-radius:6px;border:1px solid var(--border);background:var(--theme);color:var(--primary)}
.neuter-calc button{padding:.6em 1.1em;border:0;border-radius:6px;background:var(--primary);color:var(--theme);font-weight:700;cursor:pointer}
.nc-result{margin-top:1.1em;line-height:1.85}
.nc-result:empty{display:none}
.nc-best{font-size:1.15rem;font-weight:700;margin-bottom:.3em}
.nc-badge{display:inline-block;padding:.12em .5em;border-radius:6px;background:#ffd54f;color:#1c1c1c;font-weight:700}
.nc-note{font-size:.9em;opacity:.8}
</style>

<script>
(function(){
  function fmt(d){return d.getFullYear()+"년 "+(d.getMonth()+1)+"월 "+d.getDate()+"일";}
  function addM(d,m){var x=new Date(d.getTime());x.setMonth(x.getMonth()+m);return x;}
  var msDay=86400000;
  function calc(){
    var v=document.getElementById("birth").value;
    var out=document.getElementById("result");
    if(!v){out.innerHTML="생년월일을 입력하세요.";return;}
    var b=new Date(v+"T00:00:00");
    var now=new Date(); now.setHours(0,0,0,0);
    if(b>now){out.innerHTML="⚠️ 생년월일이 미래입니다. 다시 확인해주세요.";return;}
    var start=addM(b,4);
    var deadline=addM(b,5);
    var best=addM(b,4); best.setDate(best.getDate()+15);
    var status;
    if(now>deadline){status="⚠️ 권장 시기(생후 5개월)가 지났습니다. 수의사와 상담해 가능한 빨리 진행하세요.";}
    else if(now>=start){status="✅ 지금이 권장 시기 안입니다. 병원 예약 잡기 좋은 때예요.";}
    else{status="🗓️ 아직 이릅니다. 권장 시작까지 D-"+Math.round((start-now)/msDay)+"일.";}
    out.innerHTML=
      '<div class="nc-best">추천: <span class="nc-badge">'+fmt(best)+'</span> 무렵 (생후 약 4.5개월)</div>'+
      '<p>권장 범위: <b>'+fmt(start)+'</b> ~ <b>'+fmt(deadline)+'</b> (생후 4~5개월)</p>'+
      '<p>'+status+'</p>'+
      '<p class="nc-note">※ "Feline Fix by Five"(생후 5개월 전) 기준. 품종 무관, 비만 관리가 더 중요합니다.</p>';
  }
  document.getElementById("calcBtn").addEventListener("click",calc);
  document.getElementById("birth").addEventListener("change",calc);
})();
</script>

## 어떻게 계산하나?

- **권장 범위**: 생후 4개월 ~ 5개월
- **추천일**: 생후 약 4.5개월 (범위 한가운데)
- **마감**: 생후 5개월 전 — 이 전에 끝내는 게 권고

숫자 근거(연구·수의사 단체 출처)는 본문 글에 정리돼 있다 →
[중성화, 언제 하면 좋을까?](/posts/2026-06-30-british-shorthair-neutering-timing/)
