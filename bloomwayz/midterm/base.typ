#let sans = (
  "Libertinus Sans",
  "KoPubWorldDotum_Pro",
)

/*-------------------- Page settings -------------------*/
#let page-style(abstract) = (
  paper: "a4",
  margin: (x: 1in, y: 1in),
  header: context {
    if counter(page).get().first() > 1 {
      align(right, text(8pt, font: sans)[
        #abstract
      ])
    }
  },
  footer: context [
    #set align(center)
    #set text(10pt, font: sans)
    #counter(page).display(
      "1",
      both: false,
    )
  ],
)

/*-------------------- Font settings -------------------*/
#let text-style = (
  size: 11pt,
  font: (
    "Libertinus Serif",
    "Libertinus Sans",
    "KoPubWorldBatang_Pro",
  ),
  weight: "light",
)

#let math-style = (
  font: (
    "Libertinus Math",
    "Libertinus Sans",
  ),
  weight: "regular",
  features: ("ssty",),
)

#let hangul-env = regex("[\u3131-\u318E\uAC00-\uD7A3]")

#let fit-hangul = it => context {
  let baseline = if (text.size >= 9pt) { 0pt } else { -0.5pt }
  set text(size: text.size / 1.1, baseline: baseline)
  it
}

/*---------------------- Make title ---------------------*/
#let make-title(data) = [
  #set par(
    justify: true,
    leading: 1em,
  )

  #align(center, text(15pt, font: sans, weight: "bold")[
    #data.title
  ])

  #align(center, text(11pt, font: sans, weight: "medium")[
    #data.semester | #data.instructor \
    #data.datetime
  ])
]

/*------------------------ Macros -----------------------*/
#let c = counter("problem")

#let problem(it) = block[
  #c.step()
  #v(1.5em)
  #grid(
    columns: (1em, auto),
    align: (right, left),
    gutter: .8em,

    text(size: 13pt, baseline: -.04em)[*#context c.display().*], [#it],
  )
  #v(.5em)
]

#let alt(fst, snd) = text[#fst] + text(size: 0.7em, style: "italic", fill: rgb(96, 96, 96))[#snd] + h(0.1em)

#let ast = text(baseline: -.3em)[$star.op$]

#let blank = "___"

#let bar(x) = $#text[#x]'$

#let one = sub[1]
#let two = sub[2]
#let subi = sub[i]

