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
