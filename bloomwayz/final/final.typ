/*------------------ Document metadata ------------------*/
#let abstract = "2024-2 통사론"
#let metadata = (
  title: "통사론",
  semester: "2024-2 중간",
  instructor: "박동우",
  datetime: "2024. 10. 31.(목) 12:30~13:45",
)

/*------------------ Document settings ------------------*/
#import "base.typ": *
#set page(..page-style(abstract))
#set text(..text-style)
#show math.equation: set text(..math-style)
#show hangul-env: fit-hangul

/*-------------------- Example styles -------------------*/
#import "@preview/eggs:0.10.0": *
#import abbreviations: ins, pl
#show: eggs.with(auto-glosses: false)

/*------------------ Syntax tree styles -----------------*/
#import "syntool.typ": syntree

#let mytree = it => syntree(
  nonterminal: (font: "Libertinus Sans"),
  terminal: (font: "Libertinus Serif"),
  child-spacing: 1em,
  layer-spacing: 1.5em,
  it,
)

/*-------------------- Example styles -------------------*/
#make-title(metadata)

#set par(
  justify: true,
  leading: 1em,
  first-line-indent: (amount: 1em, all: true),
)

#linebreak()


/*------------------- Document Begins -------------------*/

#problem[
  다음 문장이 비문법적인 이유를 설명하시오.
]

#example[
  \* Megan loves.
]

#problem[
  영어의 _do_ 삽입을 #alt("최후의 수단", "last resort") 개념을 사용하여 설명하시오.
]

#problem[
  이탈리아어 _ne_ 접어화를 설명하고, 이와 관련하여 다음 문장의 심층구조와 표층구조를 제시하시오(삼각형을 통해 DP 내부 구조는 그리지 않아도 됨).
]

#example[
  John arrived at the airport on time.
]

#problem[
  #alt("하위인접조건", "subjacency condition")을 정의하고, 다음 문장의 문법성을 하위인접조건을 이용하여 설명하시오.
]

#example[
  \* What#subi did he go home [#sub[PP] before [#sub[CP] Mary finished $t_i$]]?
]

#problem[
  #alt("최소연결조건", "Minimal Link Condition")\(MLC)을 정의하고, 다음 문장의 문법성을 MLC로 설명하시오. (#emph[what]#subk\이 #emph[who]#subi\보다 먼저 이동한다고 가정할 것!)
]

#example[
  \* Who#subi did you wonder what#subk $t_i$ kissed $t_k$?
]

#problem[
  다음 문장에 대한 심층구조와 표층구조를 각각 그리고, 어떠한 #alt("변형 규칙", "transformational rule")이 적용되었는지 밝히시오. (동사의 자질, 이동, AgrO, 격 점검 등을 표시할 것! 삼각형을 통해 DP 내부 구조는 그리지 않아도 됨.)
]

#example[
  Who has read the book?
]

#problem[
  다음 예시의 문법성을 관계절의 구조를 이용하여 설명하시오.
]

#example[
  \* the man Maria had the belief that I had met last week
]

#pagebreak()

#problem[
  다음에 답하시오.
]

#example[
  A: A boy will admire every teacher. \
  B: A girl will, too. (_A girl will admire every teacher, too._의 의미를 가짐.)
]

#v(1em)

#set enum(numbering: "(i)")
+ A와 B 문장은 모두 중의적인 의미를 갖는다. B의 의미가 무엇인지 밝히시오.
+ B 문장이 어떻게 생성되는지, 그리고 어떻게 중의적인 의미를 갖게 되는지 그 과정을 Y모형을 사용하여 설명하시오.

#align(right + bottom)[
  한 학기 동안 수고하셨습니다.
]
