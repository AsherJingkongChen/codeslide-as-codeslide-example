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
# Behind the Scenes of CodeSlide CLI

```html
<code id="slide" class="cli">
  CodeSlide CLI
</code>
```

---
[:slide](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/README.md)

---
# The general process

1. Build a schema
2. Render HTML and CSS to slideshow with it
3. Print the rendered slideshow to the output

---
# `Manifest`

- The main schema
- A combination of [`FrontMatter`](#frontmatter) and [`SlideShow`](#slideshow)
- An extended [`Renderer`](#renderer) schema
- `Manifest.parse`: Parse a [manifest file](#manifest-file) into a `Manifest` schema
- `Manifest.render`: Render the slideshow

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/schemas/Manifest.ts)

---
# Manifest file

- A markdown document constructed of the Front Matter section and the Slide Show section
- The specifications of Manifest file is [here](https://github.com/AsherJingkongChen/codeslide/blob/main/app/cli/docs/REFERENCE.md#manifest-file-specifications)

---
# `FrontMatter`

- The Front Matter section schema
- An extended `Renderer` schema
- Parsed from the Front Matter section of [manifest file](#manifest-file) (YAML syntax)

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/schemas/FrontMatter.ts)

---
# `SlideShow`

- The Slide Show section schema
- An labeled object whose type is `{ slides: string[] }`
- Parsed from the Slide Show section of [manifest file](#manifest-file) (Markdown syntax)
- Each slide is splitted by a horizontal line
- Has special rules for rendering embedding code snippets and slides

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/schemas/SlideShow.ts)

---
# `Renderer`

- The slideshow renderer schema 
- Depends on [Eta](https://github.com/eta-dev/eta) to render [HTML template](#html-template)
- `Renderer.parse`: Parse an object into a `Renderer` schema
- `Renderer.render`: Render the slideshow to HTML text

## Note
- `Renderer` is the root schema of [`Manifest`](#manifest). That is, [`Manifest`](#manifest) is an extended `Renderer`.

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/assets/text.d.ts)
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/assets/index.ts)
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/schemas/Renderer.ts)

---
# HTML template

\{\% and \%\} are interpolation characters

[:code.html](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/assets/slides.html)

---
# CSS (Horizontal layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/assets/slides.horizontal.css)

---
# CSS (Vertical layout)

[:code.css](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/src/assets/slides.vertical.css)

---
# The entry point

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/app.ts)

## `CLIOptions`

- The CLI options schema
- `-m, --manifest`: Manifest file path
- `-o, --output`: Output file path

[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/schemas/CLIOptions.ts)

---
# Miscellaneous

- Because [Node Fetch](https://github.com/node-fetch/node-fetch) does not handle `file:` URI scheme, CodeSlide CLI implements it with `fs.readFileSync`:
[:code.ts](https://raw.githubusercontent.com/AsherJingkongChen/codeslide/main/app/cli/src/utils/getContent.ts)

---
# Thanks for your watching!

- The repository of this example is [here](https://github.com/AsherJingkongChen/codeslide-cli-as-codeslide-cli-example.git)
- See other CodeSlide CLI examples [here](https://github.com/AsherJingkongChen/codeslide/tree/main/app/cli/examples)
- See the installation guide of CodeSlide CLI [here](https://github.com/AsherJingkongChen/codeslide/blob/main/app/cli/README.md#installation)
