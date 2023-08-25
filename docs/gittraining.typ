#import "@preview/polylux:0.2.0": *
#import themes.clean: *

#show: clean-theme.with(
  short-title: "Git Training",
  logo: image("images/logo@2x.png"),
  footer: "Mark Derricutt, September 2023"
)

#show raw: set text(font: "Jetbrains Mono", size: 14pt)

#set text(size: 25pt, font: "Blogger Sans")

#title-slide(
  title: "Git Training",
  subtitle: "How to become a master Git",
  date: "September 2023",
  authors: [Mark Derrigit :-)])

#slide(title: "Gitting Things Done")[
#line-by-line(mode: "transparent")[
  - Introduction
  - The Basics
  - Elements of a good commit message
  - Advanced Topics
]]

#slide(title: "The Basics")[
#line-by-line(mode: "transparent")[
- Creating and cloning a git repository
- Making your first commit
- Staging Files vs Staging Chunks
- Amending Changes
- Reverting Changes
- Browsing Changes
- Stashing Changes
]]

#slide(title: "Branching")[
#line-by-line(mode: "transparent")[
- Why Branch?
- Branching Strategies
- Creating a Branch
- Switching Branches
- Comparing Branches
- Merging Branches
- Pushing and Pulling Branches
]][
#image("images/gitbranching.png")
]

#slide(title: "Advanced Topics")[
#line-by-line(mode: "transparent")[
- Rebasing
- Interactively Rebasing
- The Reflog
- Worktrees
]]

#focus-slide("Git")

#new-section-slide("The Basics")

#slide(title: "Creating a git repository")[
```bash
mkdir myrepo
cd myrepo
git init
```
]

#slide(title: "Cloning a git repository")[
```bash
git clone https://github.com/SMX-LTD/myrepo.git
cd myrepo
```
]

#slide(title: "Making Your First Commit")[
#lorem(20)
]

#slide(title: "Ammending Changes")[
#lorem(20)
]

#slide(title: "Reverting Changes")[
#lorem(20)
]

#slide(title: "Stashing Changes")[
#lorem(20)
]

#new-section-slide("Commit Messages")

#slide(title: "Elements of a good commit message")[
#lorem(30)
][
```
TICKET-001 Short Summary of Change

Longer description of change.

- Summary should be max 50 characters wide.
- Detail should be max 75 characters wide.

Footers: Go here.
```
]

#new-section-slide("Advanced Topics")

#slide(title: "The Reflog")[
#lorem(20)
]
