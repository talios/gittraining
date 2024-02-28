#import "@preview/polylux:0.3.1": *
#import themes.clean: *

#focus-slide("Git \u{2014} The Basics")

#slide(title: "Creating a git repository")[
```bash
mkdir myrepo
cd myrepo
git init
```
]

#slide(title: "Cloning a git repository")[
```bash
git clone https://github.com/talios/myrepo.git
cd myrepo
```
]

#slide(title: "Making Your First Commit")[
```bash
echo "Hello world" > hello.txt
git add hello.txt
git commit -v
```
See commit message section for content.
]

#slide(title: "Ammending Changes")[
```bash
echo "Hello universe" > hello.txt
git add hello.txt
git commit --amend -v
```
]

#slide(title: "Reverting Uncommitted Changes")[
```bash
git reset --hard HEAD
```
*Note*: Only do this for unpushed, unmerged changes unless you _really_ know what you're doing.
]

#slide(title: "Reverting Committed Changes")[
```bash
git reset --hard HEAD^
```
*Note*: Only do this for unpushed, unmerged changes unless you _really_ know what you're doing. On
feature branches/changes, this would often be followed up with a `git commit --ammend` and a new review
patchset pushed.
]

#new-section-slide("Stashed Changes")

#slide(title: "Stashing Changes \u{2014} Making a Stash")[
```bash
git stash    *or*
git stash create <message>
```
This will stash away any uncommited changes into a special "branch like" area of the git repository
and remove them the working copy. The stash will get the description used in the message.
]

#slide(title: "Stashing Changes \u{2014} Viewing Stashed Changes")[
```bash
git stash list
---
stash@{0}: WIP on feature/blacklist-gogo: 283dde2a0 Added Gogo commands for black list
stash@{1}: WIP on feature/blacklist-gogo: 9985f6e70 WIP
```
This will stash away any uncommited changes into a special "branch like" area of the git repository
and remove them the working copy. The stash will get the description used in the message.
]

#slide(title: "Stashing Changes \u{2014} Popping the last stash")[
```bash
git stash pop
```
This will _pop_ (reapply) the last stash back into the working copy of your repository. This is useful for
stashing a change on one branch, and popping it onto another branch - often branched off of `develop` for
independent merging.
]

