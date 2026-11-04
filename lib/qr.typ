#import "@preview/rustycure:0.2.0": qr-code

#let qr-footer(size: 10mm, padding-bottom: 0pt, text-col-width: 100%, font-size: 9pt) = {
  let domain = "meToChrist.com"
  let qr-size = size
  set par(justify: false, leading: 0.5em)
  place(
    bottom + right,
    grid(
      columns: (text-col-width, qr-size), gutter: 4mm
    )[
      #pad(bottom: padding-bottom)[#text(black, size: font-size)[#domain]]
    ][
      #qr-code("https://" + domain, quiet-zone: false)
    ],
  )
}
