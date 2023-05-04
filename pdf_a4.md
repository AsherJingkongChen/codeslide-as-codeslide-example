---
codeslide:
  version: 0.12.0
  fontFamily: Noto Sans Mono
  fontSize: large
  fontWeight: normal
  format: pdf
  pagesize: a4
  styles:
    - https://fonts.googleapis.com/css2?family=Noto+Sans+Mono:wght@400;700&display=swap

---
# The Introduction of CodeSlide

---
[:slide](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/README.md)

---
# The abstract process

1. Build a **Renderer** form
2. Render the HTML template and CSS with the built renderer
3. Print thet slideshow to the output

---
# Build a Renderer form

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/index.ts)

## Renderer

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/renderer.ts)

---
# Build a Renderer form

## Enumerations of fields

- Export slideshow file as HTML or PDF format
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/format.ts)

- Specify page size for PDF format
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/pagesize.ts)

- Present the slideshow in horizontal or vertical layout
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/layout.ts)

---
# The HTML template

CodeSlide uses [Eta](https://github.com/eta-dev/eta) to render
{% and %} are interpolation symbols

[:code.html](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.html)

---
# CSS (Horizontal layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.horizontal.css)

---
# CSS (Vertical layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.vertical.css)

---
# The HTML template and CSS are imported as text in the program

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/text.d.ts)
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/index.ts)

---
# Print the slideshow to the output

## Applications

The print process runs in an application, the list of all applications is here:
1. CodeSlide CLI

---
# CodeSlide CLI

A Node.js Command Line Interface

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/index.ts)

---
# Validate CLI options

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/options.ts)

---
# Build a Renderer form and render with it

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/parse.ts)

---
# Print the slideshow to the output
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/print.ts)

---
# Thanks for your watching!

See other CodeSlide CLI examples [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/examples/)

The installation guide [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/docs/REFERENCE.md#installtion)
