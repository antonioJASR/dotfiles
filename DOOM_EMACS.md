## Keybindings

### Evil mode

`SPC f r` Recently opened files
`SPC .` Search files
`SPC o p` Open Project Sidebar

`SPC b b` Display Buffers
`SPC SPC` Find files inside the Project

`SPC RET` Create or jump to bookmark

Awesome VIM Like window managements:

- `SPC w v` Vertical Split
- `SPC w s` Horizontal Split
- `SPC w j` Move to the window above
- `SPC w k` Move to the window below

Ruby

- `SPC m '` Start ROBE, for autocompletion

### Emacs mode

- `C-x C-b` Show the buffer list
- `C-x b` Switch between buffers

Files

- `C-x C-w` write a file
- `C-x C-f` Find a file

Buffers

- `C-` and Click the left mouse button will show the Buffers menu
- `C-x Right` Go to the next Buffer
- `C-x Left` Go to the previous Buffer
- `C-x k` Delete a Buffer after pressing `RET`
- `C-x C-s` Save the buffer
- `C-x b` Switch to buffer
- `C-x C-q` Make buffer read only

Windows

- `C-x 0` Delete window
- `C-x 1` Delete other windows
- `C-x 2` Horizontal split
- `C-x 3` Vertical split
- `C-x o` Move to other window

- `C-x 4 f` Open a file in another window
- `C-x 4 b` Select a different buffer in another window

## Notes

Config files are inside the $DOOM_DIR which the default is `~/.doom.d`, inside that folder contains

3 files:

- `init.el`
- `config.el`
- `packages.el`

To apply changes to your Emacs configuration execute `doom sync`

```bash
~/.emacs.d/bin/doom sync
```
