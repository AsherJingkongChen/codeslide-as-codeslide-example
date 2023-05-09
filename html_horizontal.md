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
# The general process

1. Build a **`Renderer`**
2. Render HTML and CSS
3. Print the slideshow to the output

---
# Build a `Renderer`

## `Renderer`

- `Renderer.parse`: Parse the manifest into renderer
- `Renderer.render`: Render the slideshow

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Renderer.ts)

---
# Build a `Renderer`

## Parsers

`Renderer` = `ManifestParser` (Parsed)

`ManifestParser` = `FrontMatterParser` + `SlideShowParser`

---
# Build a `Renderer`

## `ManifestParser`

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/parsers/ManifestParser.ts)

---
# Build a `Renderer`

## `FrontMatterParser`

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/parsers/FrontMatterParser.ts)

---
# Build a `Renderer`

## `SlideShowParser`

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/parsers/SlideShowParser.ts)

---
# Build a `Renderer`

## The utility to acquire resources

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/parsers/_getContent.ts)

---
# Build a `Renderer`

## Options

- Export a slideshow as a HTML or PDF file
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Format.ts)

- Specify the page size in PDF format
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/PageSize.ts)

- Present the slideshow in horizontal or vertical layout
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/Layout.ts)

---
# Render HTML and CSS

## HTML template

CodeSlide depends on [Eta](https://github.com/eta-dev/eta) 
to render HTML template.

\{\% and \%\} are interpolation characters.

[:code.html](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.html)

---
# Render HTML and CSS

## CSS (Horizontal layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.horizontal.css)

---
# Render HTML and CSS

## CSS (Vertical layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/slides.vertical.css)

---
# Render HTML and CSS

## Referenced as text modules

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/text.d.ts)
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/slides/index.ts)

---
# Print the slideshow to the output

The print process is implemented by application ...

---
# Applications of CodeSlide

1. CodeSlide CLI

---
[:slide](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/README.md)

---
# CLI entry point

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/index.ts)

---
# CLI options validation

1. `-m, --manifest`: Manifest file path
2. `-o, --output`: Output file path

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/CLIOptions.ts)

---
# Build a `Renderer` and Print to the output

Make use of `Renderer.parse` and `Renderer.render`

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/applications/cli/src/print.ts)

---
# Thanks for your watching!

See other CodeSlide CLI examples [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/examples)

See the installation guide of CodeSlide CLI [here](https://github.com/AsherJingkongChen/codeslide/tree/main/applications/cli/README.md#installation)
