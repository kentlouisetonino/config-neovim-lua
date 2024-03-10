### DESCRIPTION
#
> - This is my default Neovim config with Lua.

<br />

![Screenshot from 2024-01-16 13-39-06](https://github.com/kentlouisetonino/config-neovim-lua/assets/69438999/c7d3e335-674c-4c9f-9b33-fc54e8f9708a)

<br />
<br />



### LOCAL SETUP
#
> - Run the following commands below.

```bash
# Go to the config directory.
cd .config

# Clone the repository.
git clone git@github.com:kentlouisetonino/config-neovim-lua.git

# Rename the folder.
mv config-neovim-lua nvim

# Go the nvim directory and open nvim.
cd nvim
nvim init.lua

# Install the plugins.
:PlugInstall
```

> - Copy the `init.lua` content.

<br />
<br />



## KEYBOARD COMMANDS
> - NerdTree basic commands.

```plaintext
m     : This bring up the NerdTree Filesystem menu.
a     : This allows to create a new file.
d     : This allows to delete a file.
mm    : This allows renaming a file.

t     : Open a new tab.
gt    : Switch to next tab.
gT    : Switch to previous tab.
```

> - Cursor movement basic commands.

```plaintext
h   : Move cursor left.
j   : Move cursor down.
k   : Move cursor up.
l   : Move cursor right.
H   : Move to top of screen.
M   : Move to middle of screen.
L   : Move to bottom of screen.

e   : Jump forwards to the end of a word.
E   : Jump forwards to the end of a word (Words can contain punctuation).
w   : Jump forwards to the start of a word.
W   : Jump forwards to the start of a word (Words can contain puntuation).

C-y : Completion active import.
C-n : Completion next import.
C-p : Completion previous import.

r   : Replace a character.
x   : Delecte a character.
o   : New line without pressing insert.
```
