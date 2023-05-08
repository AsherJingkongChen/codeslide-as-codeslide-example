---
codeslide:
  version: 0.12.0
  fontFamily: Noto Sans Mono
  fontSize: large
  fontWeight: normal
  format: html
  layout: horizontal
  styles:
    - https://fonts.googleapis.com/css2?family=Noto+Sans+Mono:wght@400;700&display=swap

---
# Behind the Scenes of CodeSlide

```html
<code id="slide">
```

---
[:slide](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/README.md)

---
# The abstract process

1. Build a **Renderer**
2. Render the HTML template and CSS with the built renderer
3. Print thet slideshow to the output

---
# Build a Renderer

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/index.ts)

## Renderer

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Renderer.ts)

---
# Build a Renderer

## Options

- Export slideshow file as HTML or PDF format
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Format.ts)

- Specify page size for PDF format
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/PageSize.ts)

- Present the slideshow in horizontal or vertical layout
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Layout.ts)

---
# The HTML template

CodeSlide uses [Eta](https://github.com/eta-dev/eta) to render
\{\% and \%\} are interpolation symbols

[:code.html](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.html)

---
# CSS (Horizontal layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.horizontal.css)

---
# CSS (Vertical layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.vertical.css)

---
# Reference the HTML template and CSS as text

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/text.d.ts)
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/index.ts)

---
# Print the slideshow to the output

The print process is implemented in an application ...

---
# Applications of CodeSlide

1. CodeSlide CLI

---
[:slide](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/README.md)

---
# CLI entrypoint

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/index.ts)

---
# CLI options validation

1. Manifest path
2. Output path

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/CLIOptions.ts)

---
# Build a Renderer and Print to the output

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/print.ts)

---
# Thanks for your watching!

See other CodeSlide CLI examples [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/examples/)

The installation guide [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/docs/REFERENCE.md#installtion)
