VimIDE
======
Some helper stuff, so that a tmux + vim combo works like an "IDE"

I usually use tmux and vim. On my left, I edit the source file, and on my
right, I usually run the tests. To have the same setup, just say:
    vimide

See:

+------------------------------+
|               |              |
|               |              |
|               |              |
|    gvim       |   console    |
|               |              |
|               |              |
|               |              |
|               |              |
+------------------------------+

The basic idea is that within tmux, you can send commands to other panes,
and you can do the same, if you start your gvim in server mode


Re-run last command vim: ESC gn
-------------------------------
I need to save my changes in vim, go to the right pane, execute the last
command (usually nosetests), and go back to vi. Instead of doing all these
steps, press Esc, gn in vim. It will save all files, and send Ctrl + p, and
Enter to the right pane.

Edit files in vim: vimedit
--------------------------
Say you want to fix your pep8 violations. Okay, go to the right panel, execute
pep8. That will print out all the dodgy files, and the lines. You can open
those files one by one, but it makes sense to pipe pep8 -s output to vimedit:
    pep8 somepackage | vimedit
It will activate your left pane, open the file in vi, so you can fix that.
Should you wish to jump to the next error, you need to press Enter on the right
panel. Use Re-run last command for that (ESC gn)
