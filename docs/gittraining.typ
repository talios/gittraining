#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#show: clean-theme.with(
  short-title: "Git Training",
  logo: image("images/logo@2x.png"),
  footer: "Mark Derricutt, February 2024"
)

#show raw: set text(font: "Jetbrains Mono", size: 14pt)

#set text(size: 25pt, font: "Blogger Sans")

#title-slide(
  title: "Git Training",
  subtitle: "How to become a master Git",
  date: "February 2024",
  authors: [Mark Derrigit :-)])

#slide(title: "Gitting Things Done")[
#line-by-line(mode: "transparent")[
  - Introduction
  - The Basics
  - Elements of a good commit message
  - Gerrit and Code Reviews
  - Advanced Topics
]]

#include "basics.typ"
#include "commit_messages.typ"
#include "gerrit.typ"
#include "branching.typ"
#include "advanced_topics.typ"

// High level how git works under the hood
// How gerrit review process works with respect to git
// i.e.
// * git add
// * git commit
// * git commit --amend
// * git rebase -i
// * git push
// How gitflow works
// * Branch structures and meaning/uses
// * gitflow tooling
// * git merge
// * git rebase (for branches)
// The reflog

#new-section-slide("Advanced Topics")

#slide(title: "The Reflog")[
#lorem(20)
]
