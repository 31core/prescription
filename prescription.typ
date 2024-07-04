#import "@preview/tiaoma:0.2.0"
#import "config.typ": *
#include "config.typ"

#place(top + left)[
  #tiaoma.dbar-exp("[01]98898765432106", width: 25%)
]

#place(
  top + right,
  text(size: 16pt)[
    #rect(stroke: 0.5pt)[普通]
  ]
)

#set text(top-edge: 5pt)
#set text(font: "Noto Sans CJK SC")
#align(center)[#text(size: 20pt)[#title]]
#align(center)[#text(size: 26pt)[处 方 笺]]

#set text(font: "SimSun", size: 14pt)
#grid(
  columns: 4,
  gutter: 1fr,
  [姓 名：#underline[#name]],
  [性 别：#underline[#gender 性]],
  [年 龄：#underline[#age 岁]],
  [科 室：#underline[#department 科]],
)

#grid(
  columns: 3,
  gutter: 1fr,
  [门诊号：#underline[98898765432106]],
  [费 别：#underline[自 费]],
  [日 期：#underline[#datetime.today().year()]年#underline[#datetime.today().month()]月#underline[#datetime.today().day()]日],
)

临床诊断及证型：#underline[#diagnosis]

#line(stroke: 1pt, length: 100%)

#text(size: 24pt)[*R.*]

#context for i in medicines.get() {
  [#i
  
  ]
}

#align(bottom)[
#stack(
  spacing: 1em,
  line(stroke: 1pt, length: 100%),
)]

#align(bottom)[
#grid(
  columns: 2,
  gutter: 1fr,
  [医 师： #underline[#doctor]],
  [金 额： #underline[#amount]],
)]

#align(bottom)[
#grid(
  columns: 2,
  gutter: 1fr,
  [药师（审核、校对、发药）： #underline[]],
  [药师/士（调配）： #underline[]],
)]

#align(bottom)[
#grid(
  columns: 2,
  gutter: 1fr,
  [#text(size: 10pt)[
    温馨提示：
    + 本处方当天有效，过期作废；
    + 取药时请仔细核对清单，点齐药品；
    + 依《药品管理法》，药品一经发出，一律不得退换；
  ]],
  [
    #tiaoma.qrcode("https://github.com/31core/prescription", width: 50pt)
  ])]
