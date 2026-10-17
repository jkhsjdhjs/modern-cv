#import "../src/lib.typ"
#import "@preview/tidy:0.4.3"

#let source-files = (
  "lib.typ",
  "resume.typ",
  "coverletter.typ",
  "colors.typ",
  "icons.typ",
)

#let public-api-docs = tidy.parse-module(
  source-files.map(s => read("../src/" + s)).join("\n"),
  name: "Public API Reference",
  old-syntax: true,
  scope: (
    resume: lib,
  ),
)

#let helper-docs = tidy.parse-module(
  read("../src/helpers.typ"),
  name: "Private Helper Functions",
  old-syntax: true,
)

= Modern CV

#tidy.show-module(
  public-api-docs,
  omit-private-definitions: true,
)

#pagebreak()

#tidy.show-module(helper-docs)
