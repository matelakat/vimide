# VimIDE

Some helper stuff, so that it is more comfortable to edit with vim. These tools
could be helpful for a tdd-style development. Spare some time for yourself!

## Dependencies

I use:

 - `dmenu`
 - `dwm`
 - `st`
 - `colordiff`
 - `xclip`
 - `xsetroot`

## Start VimIDE

To start it, type:

    vimide

It is nothing more, than starting a vi with the `--servername` option.

## VimIDE mappings

### Re-run last command vim: ESC gn

 - Save all changes
 - Change background color to yellow
 - Press WinKey + 2 (Change to second window)
 - Press Ctrl + p (Recall previous command)
 - Press Enter (execute the command)
 - Press WinKey + 1 (Change back to first window)

## Command-line tools

### Open file in VimIDE - `O`

You have a VimIDE open. If you run `O`, it will open the file that is specified
by your clipboard's content

### Edit files one-by one in vim: `vimedit`

Say you want to fix your pep8 violations. Okay, go to the right panel, execute
pep8. That will print out all the dodgy files, and the lines. You can open
those files one by one, but it makes sense to pipe pep8 -s output to vimedit:

    pep8 somepackage | vimedit

It will activate your left pane, open the file in vi, so you can fix that.
Should you wish to jump to the next error, you need to press Enter on the right
panel. Use Re-run last command for that (ESC gn)
