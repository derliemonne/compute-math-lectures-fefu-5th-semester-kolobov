#import "@preview/showybox:2.0.3": showybox


#let der(x) = math.accent(x, sym.dot)
#let der2(x) = math.accent(x, sym.dot.double)
#let der3(x) = math.accent(x, sym.dot.triple)
#let der4(x) = math.accent(x, sym.dot.quad)

#let num(number) = place(
  right,
  "(" + str(number) + ")"
)

#let _box(content) = box(
  stroke: 1pt,
  radius: 5pt,
  inset: (x: 1em, y: 0.65em),
  content
)

#let lbox(content) = align(left, _box(content))
#let cbox(content) = {
  content = align(left, content)
  align(center, _box(content)
  )
}

#let rbox(content) = {
  content = align(left, content)
  align(right, _box(content))
}

#let bbox(head, ..content) = showybox(title: head,  ..content)

#let bbbox(head, ..content) = showybox(breakable: true, title: head,  ..content)



#let note(..content) = bbox("Замечание", ..content)

#let def(..content) = bbox("Определение", ..content)

#let statement(..content) = bbox("Утверждение", .. content)

#let eg(..content) = bbox("Пример", .. content)

// for display math to align left
#let m(content) = box(content)

#let when = [$comma space$]

// when aligned
#let whena = [$comma &space$]

#let where = [$, " ""где"$]

// where aligned
#let wherea = [$, &" ""где"$]

#let matdet(..content) = math.mat(delim: "|", ..content)

#let matnorm(..content) = math.mat(delim: "||", ..content)
