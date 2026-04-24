# Math
This is the section within the repository that I use as a server for my Math writings and notes. It has the following (probabily) interesting directories:
1. [**Final Documents**](./docs/): Where all the final PDFs are.
    - To look at an example, check the [example.pdf](./docs/example.pdf), a showcase of the `lib` capabilities.
2. [**Typst Template**](./typ/lib/): My personal use templates for Typst, focused on easiness of speed while keeping a professional and minimal look. 
    - For more on the templates, go to the *Typst Lib* section, or check the source code.
1. [**Typst Source Code**](./typ/): Where all documents I am working on are, with their specific layout designed for modularity.

## Directory Layout
Full `dojo/math/` layout.
```
.
├── README.md
├── docs/ # Compiled PDFs (e.g., example.pdf)
└── typ/ # All Typst sources
``` 

Layout of `math/typ/`, showcasing how every document has the layout of `example`.
```
├── example/ # Sample document project
│ ├── main.typ
│ ├── refs.bib
│ ├── sections/ # Chapter files
│ └── src/ # Images, scripts, etc.
├── group_theory/ # Another document project
│ └── ...
└── lib/ # Shared library (the core)
```

Detailed layout of `lib/`
```
├── base-main.typ # Starter template
├── conf.typ # Title/author configuration
├── macros.typ # Custom macros
├── notation.typ # Math notation shortcuts
└── templates.typ # Theorem, proof, code, figure environments
```
---

# Typst Lib
## Library contents
| File | Purpose |
| ---- | ------- |
| `base-main.typ` | Bare-bones example for a `main.typ` |
| `conf.typ` | Handles document layout (title, subtitles, etc) |
| `macros.typ` | Global shurtcuts |
| `notation.typ` | Math notation shortcuts | 
| `templates.typ` | Functions for Theorem, Definition, Proofs, etc |

## How to use the library

1. **Create a new project** inside `typ/` (e.g., `my_doc/`).
    - Layout of `example` is recomended.
2. **Copy `lib/base-main.typ` or write `main.typ`** and import the library using a relative path:

```typ
#import "../lib/conf.typ": conf
#import "../lib/templates.typ": *

// Set metadata
#let name = "Title"
#let sname = "Subtitle"
#let authors = ((name: "Your Name", affiliation: "", email: ""),)
#let abstract = [Write your abstract here.]

#set document(date: auto, title: [#name])
#show: conf.with(title: [#name], subtitle: [#sname], authors: authors, abstract: abstract)
#show: counter_conf

// Your content follows
= First section

#def("Definition")[ ... ]
#thm("Theorem", [ ... ])
#proof[ ... ]
```

3. **Compile with Typst**: From the `typ` directory run:
```bash
    typst compile --root . my_doc/main.typ ../docs/my_doc.pdf
```
Or use `watch` in order to have live changes:
```bash
    typst watch --root . my_doc/main.typ ../docs/my_doc.pdf
```

## Notes
1. If you find any mistakes, *please* let me know, either through a PR or to my [mail](mailto:ain.bc@proton.me)(ain.bc@proton.me).
2. Feel free to read, fork and reference the contents of this directory, but **always** with proper citation.
3. For more information about my workflow, you can check my [**dotfiles**](https://github.com/0kron/dotfiles), hopefully by the time you read this I have a good `nvim` config with proper snippets.
