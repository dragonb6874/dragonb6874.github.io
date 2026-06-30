---
title: "고양이 중성화 best 시기 계산기"
date: 2026-06-30
draft: false
tags: ["고양이", "중성화", "계산기", "도구"]
categories: ["반려동물"]
---

고양이 **생년월일**만 넣으면 권장 중성화 시기를 **달력에 표시**해 준다.
기준은 수의사 단체 권고인 "**Feline Fix by Five**"(생후 5개월 전 중성화)다.
자세한 근거는 → [브리티시 숏헤어 중성화, 언제 하면 좋을까?](/posts/2026-06-30-british-shorthair-neutering-timing/)

> ⚠️ 일반 기준일 뿐, 개체 건강 상태에 따라 **담당 수의사 판단이 우선**이다.

<div class="neuter-calc">
  <label for="birth">우리 고양이 생년월일 (달력 클릭 또는 입력)</label>
  <div class="nc-row">
    <input type="date" id="birth">
    <button id="calcBtn" type="button">달력에 표시</button>
  </div>
  <div id="result" class="nc-result"></div>
</div>

<style>
.neuter-calc{border:1px solid var(--border);border-radius:10px;padding:1.2em;margin:1.6em 0;background:var(--entry)}
.neuter-calc label{font-weight:600;display:block;margin-bottom:.6em}
.nc-row{display:flex;flex-wrap:wrap;gap:.5em;align-items:center}
.neuter-calc input[type=date]{font-size:1rem;padding:.5em .6em;border-radius:6px;border:1px solid var(--border);background:var(--theme);color:var(--primary)}
.neuter-calc button{padding:.6em 1.1em;border:0;border-radius:6px;background:var(--primary);color:var(--theme);font-weight:700;cursor:pointer}
.nc-result{margin-top:1.1em}
.nc-result:empty{display:none}
.nc-best{font-size:1.05rem;font-weight:700;margin-bottom:.5em}
.nc-badge{display:inline-block;padding:.12em .5em;border-radius:6px;background:#ffd54f;color:#1c1c1c;font-weight:700}
.nc-legend{font-size:.85em;margin-bottom:.8em;opacity:.9}
.nc-legend .lg{display:inline-block;width:1em;height:1em;border-radius:3px;vertical-align:-2px;margin-right:.25em}
.lg-in{background:rgba(255,213,79,.4)}
.lg-best{background:#ffd54f;outline:2px solid #f0a500}
.cal-wrap{display:flex;flex-wrap:wrap;gap:1.2em}
.cal-title{font-weight:700;text-align:center;margin-bottom:.4em}
.cal-grid{display:grid;grid-template-columns:repeat(7,2.2em);gap:3px}
.cal-grid>div{height:2.2em;display:flex;align-items:center;justify-content:center;font-size:.82rem;border-radius:5px}
.cal-dow{font-weight:700;opacity:.6}
.cal-in{background:rgba(255,213,79,.4)}
.cal-best{background:#ffd54f;color:#1c1c1c;font-weight:800;outline:2px solid #f0a500}
.cal-empty{visibility:hidden}
</style>

<script>
(function(){
  var DOW=["일","월","화","수","목","금","토"];
  function fmt(d){return d.getFullYear()+"년 "+(d.getMonth()+1)+"월 "+d.getDate()+"일";}
  function addM(d,m){var x=new Date(d.getTime());x.setMonth(x.getMonth()+m);return x;}
  function ymd(d){return d.getFullYear()+"-"+d.getMonth()+"-"+d.getDate();}
  function month(y,m,start,deadline,best){
    var html='<div><div class="cal-title">'+y+"년 "+(m+1)+'월</div><div class="cal-grid">';
    for(var i=0;i<7;i++) html+='<div class="cal-dow">'+DOW[i]+"</div>";
    var first=new Date(y,m,1).getDay();
    var days=new Date(y,m+1,0).getDate();
    for(var b=0;b<first;b++) html+='<div class="cal-empty"></div>';
    for(var d=1;d<=days;d++){
      var cur=new Date(y,m,d), cls="";
      if(cur>=start&&cur<=deadline) cls="cal-in";
      if(ymd(cur)===ymd(best)) cls="cal-best";
      html+='<div class="'+cls+'">'+d+"</div>";
    }
    return html+"</div></div>";
  }
  function calc(){
    var v=document.getElementById("birth").value;
    var out=document.getElementById("result");
    if(!v){out.innerHTML="생년월일을 입력하세요.";return;}
    var bd=new Date(v+"T00:00:00");
    var start=addM(bd,4), deadline=addM(bd,5);
    var best=addM(bd,4); best.setDate(best.getDate()+15);
    var months=[{y:start.getFullYear(),m:start.getMonth()}];
    if(deadline.getMonth()!==start.getMonth()||deadline.getFullYear()!==start.getFullYear())
      months.push({y:deadline.getFullYear(),m:deadline.getMonth()});
    var cal="";
    for(var i=0;i<months.length;i++) cal+=month(months[i].y,months[i].m,start,deadline,best);
    out.innerHTML=
      '<div class="nc-best">추천일: <span class="nc-badge">'+fmt(best)+'</span> 무렵 (생후 약 4.5개월)</div>'+
      '<div class="nc-legend"><span class="lg lg-in"></span>권장범위(생후 4~5개월) &nbsp; <span class="lg lg-best"></span>추천일</div>'+
      '<div class="cal-wrap">'+cal+"</div>";
  }
  document.getElementById("calcBtn").addEventListener("click",calc);
  document.getElementById("birth").addEventListener("change",calc);
})();
</script>

## 어떻게 계산하나?

- **권장 범위**: 생후 4개월 ~ 5개월 (달력에 옅은 노란색)
- **추천일**: 생후 약 4.5개월 (진한 노란색)

숫자 근거(연구·수의사 단체 출처)는 본문 글에 정리돼 있다 →
[중성화, 언제 하면 좋을까?](/posts/2026-06-30-british-shorthair-neutering-timing/)
