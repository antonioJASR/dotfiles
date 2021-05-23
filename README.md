# My DotFile

Just some config files (that I use in my Machine) like:

- Neovim
- IDEAvim

## Neovim and IDEAvim

This setup works on both IntelliJ products (using IDEAvim plugin) and Neovim.

Text Objects

```
Function arguments: aa, ai
Entire file: ae, ie
Sentence: as, is
Paragraph: ap, ip
() Block: ab, ib
{} Block: aB, iB
<> Block: a<, a>, i>, i<
Tag Block: at, it
```
Commands and Motions

```
gy Go to Definition
gd Go tu Declaration
gs Go to Super method
gi Go to Implementation
gb Jump last change
gr Find Usages
<leader>ac Show Actions
<leader>rn Rename

]g GotoNextError
[g GotoPreviousError

<C-p> Go to File
<leader>sa Find In Path

ga Get Ascii Action
gg Go to the first line
gv Select previous selection

( Sentence backward
) Sentence forward
{ Paragraph backward
} Paragraph forward
]m next method
]M next end of the method
[m previous method
[M previous end of the method
```

Command line editing `:`

```
<C-b> Beginning line action
<C-e> End line action
<C-c> Cancel entry action
<C-h> Delete previous char
<C-u> Delete to cursor action
<C-w> Delete previous word
<C-r> Insert Register Action

<C-n> History Down Action
<C-p> History Up Action

```

## VIM Only

### Git Fugitive

Git Status

```
<leader>gs Git Status

s - Stage
u - Unstage
dv - Diff Vertical
```

Git Diff

```
<leader>gh Select left change
<leader>gl Select right change
<C-w>o Close the buffers
```

### Nvimtree

- `r` rename file
- `R` Refresh the tree
- `a` add file
- `c` copy file
- `x` cut file
- `p` paste file
- `d` delete a file
- `Y` copy relative path to system clipboard
- `<C-v>` will open the file in a vertical split
- `<C-x>` will open the file in a horizontal split
- `<C-t>` will open the file in a new tab

## Tmux

The Prefix is `<C-a>`

```
<C-a><C-a> Go to the beginning of line

<C-a>- Horizontal Split
<C-a>\ Vertical Split

<C-a>c New Window
<C-a>n Next Window
<C-a>p Previous Window
<C-a><C-j> Choose Window

<S-Up> Resize Pane
<S-Left> Resize Pane
<S-Right> Resize Pane
<S-Down> Resize Pane


```