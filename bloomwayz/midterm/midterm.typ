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
  #alt("보편문법", "universal grammar")\(UG)이 무엇인지 논하고, UG에 대한 근거를 두 가지 제시하시오.
]

#problem[
  #alt("어휘 범주", "lexical category")와 #alt("기능 범주", "functional category")에 대한 정의를 내리고, 각각의 범주에 속하는 #alt("품사", "part of speech")의 종류를 제시하시오.
]

#problem[
  #alt("술어", "predicate")와 #alt("논항", "argument")이 무엇인지 정의하고 V#sub[[DP #blank {DP/CP/PP}]]의 #alt("자질", "feature")을 갖는 동사를 하나 제시하고, 그 동사가 해당 자질을 갖는다는 것을 보여주는 예문을 제시하시오(이 문항에서는 DP와 NP를 동일한 것으로 간주할 것).
]

#problem[
  #alt("성분통어", "c-command")와 #alt("지배", "government")를 정의하고, 이 정의에 의거하여 수형도에서 L이 ZP를 성분통어하는지, 그리고 핵지배하는지 논하시오(X, L, W, Y는 #alt("핵", "head")이고 XP, LP, WP, YP, ZP는 #alt("구", "phrase")).
]

#align(center)[
  #mytree(
    "[XP [X] [LP [L] [WP [W] [YP [Y] [ZP]]]]]",
  )
]

#problem[
  밑줄 친 부분이 #alt("구성소", "constituent")인지 아닌지 두 가지 이상의 검사를 사용하여 밝히시오.
]

#example[
  She will #underline[put it on your desk] before tomorrow.
]


#problem[
  #emph[One]이 N이 아닌 #bar[N]를 대체한다는 것을 보여주는 예문들을 제시하고 예문의 문법성을 설명하시오.
]

#problem[
  아래의 문장에서 밑줄 친 #emph[the piano]와 #emph[in the park]가 동사 #emph[played]의 #alt("보충어", "complement")인지 #alt("부가어", "adjunct")인지 밝히고, 이를 확인할 수 있는 방법 두 가지 이상을 적절한 예와 함께 제시함으로써 그 근거를 대시오.
]

#example[
  John played #underline[the piano] #underline[in the park].
]

#pagebreak()

#problem[
  X-bar 규칙을 통해 다음의 문장에 대한 수형도를 자세히 그리시오. (약식으로 그리지 말 것. 문장에서 이동하는 요소가 있으면 이를 표시할 것.)
]

#example[
  + A girl opened the book with the red cover very carefully.
  + These people must have been being hassled.
  + The man in the car killed Mina, but can you hide him?
]

#problem[
  다음 물음에 답하시오.
]

#example[
  + Sam#one thinks that Bill#two hates himself#sub[2/\*1].
  + \* Rose#one likes her#one.
  + Karina#one thinks she#one is tall.
  + They#one liked picture of each other#one.
  + \* Sue spoke to him#one about Bill#one\'s mother.
  + They#two believe that the picture of each other#two must show their true selves.
]

#v(1em)

#set enum(numbering: "(i)")
+ (4a\~d)의 문법성을 #alt("결속 원칙", "Binding Principle")으로 설명하고자 할 때, 적절한 #alt("결속 영역", "binding domain")의 정의는 무엇인가?
+ (4e)와 (4f)에 대한 수형도를 #alt("구구조규칙", "phrase structure rule")을 이용하여 그리시오(X-bar 규칙 사용하지 말 것).
+ (4e)와 (4f)의 문법성을 결속 원칙으로 설명할 수 있는지 자세히 논하시오((i)에서 답한 결속 영역을 이용할 것).

#problem[
  다음 물음에 답하시오.
]

#example[
  + I showed Mina#subi herself#subi (in the mirror).
  + \* I showed herself#subi Mina#subi (in the mirror).
  + Tom showed me his talent.
  + #mytree("[VP [!V showed] [^DP me] [^DP his talent]]")
]

+ (5a)와 (5b)의 문법성을 통해 (5c)의 VP가 (5d)의 구조를 갖는 것이 타당한지 밝히고, 그 이유를 서술하시오.
+ (5d)의 구조로 (5a)와 (5b)의 문법성을 설명할 수 없다면, (5c)의 VP는 어떠한 구조를 가져야 하는지 수형도를 그려서 설명하시오.

#problem[
  다음 문장을 X-bar 규칙을 이용하여 괄호에 있는 구의 수형도를 그리고 수업 시간에 배운 내용으로 해당 문장의 문법성을 설명할 수 있는지 논하시오.
]

#example[
  I am [sick to death of his complaints].
]
