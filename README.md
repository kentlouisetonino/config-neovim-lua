## Description

> - This is my default Neovim config with Lua.

<br />

![Screenshot from 2025-02-15 17-35-03](https://github.com/user-attachments/assets/a75f905f-7dd7-458d-a43b-58b45e18c220)


<br />
<br />



## Setup

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

<br />
<br />



## Commands
> - NerdTree basic commands.

```plaintext
m     : This bring up the NerdTree Filesystem menu.
a     : This allows to create a new file.
d     : This allows to delete a file.
mm    : This allows renaming a file.

t     : Open a new tab.
gt    : Switch to next tab.
gT    : Switch to previous tab.
C-t   : Toggle the NERDTree.
F3    : Sync the window to the nerdtree.
```

> - Basic commands.

```plaintext
h   : Move cursor left.
j   : Move cursor down.
k   : Move cursor up.
l   : Move cursor right.
H   : Move to top of screen.
M   : Move to middle of screen.
L   : Move to bottom of screen.
G   : Move the cursor at the bottom of the page.
gg  : Move to the top of page.

e   : Jump forwards to the end of a word.
E   : Jump forwards to the end of a word (Words can contain punctuation).
w   : Jump forwards to the start of a word.
W   : Jump forwards to the start of a word (Words can contain puntuation).
gd  : Go to definition.

C-y : Completion active import.
C-n : Completion next import.
C-p : Completion previous import.

r   : Replace a character.
x   : Delete a character.
o   : New line below without pressing insert.
O   : New line above without pressing insert.

Shift + k   : Show docs.
Shift + v   : Highlight a line.
>           : Indent multiple line.
:noh        : Remove the highlights.

F1  : Open a new tab with terminal.
F2  : Escape the insert mode of terminal.
F9  : Close the current tab or window.

/<word> -> Enter -> n   : This will allow to search the word and jump to the next same word.
:wqa 			: Close all open tabs.
```

<br />
<br />



## Installation

> - To make sure the clipboard works.

```sh
sudo apt install xclip
```

<br />
<br />



## C/C++ \ Setup

> - This project uses the `Clang` compiler frontend.

> - This handles as well the `LSP` management support.

> - However, sometimes `clang` cannot find the headers of <br />
    some libraries. To fix this, put the path of the headers <br />
    in `.clangd` config. Example below is the path for AVR <br />
    LibC library.

```sh
# Go to the project directory.
cd <project-directory>

# Open the .clangd configuration file.
nvim .clangd

# Put this inside the .clangd configuration file.
# Below are sample configuration for C++ setup.
CompileFlags:
  Add:
    - -I/usr/include/c++/11
    - -I/usr/include/x86_64-linux-gnu/c++/11
    - -I/usr/lib/gcc/x86_64-linux-gnu/11/include
    - -I/usr/include
```
