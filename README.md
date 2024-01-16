## Description
> - This is my default Neovim config with Lua.

<br />
<br />



## Local Setup
> - Setup the git remote repositories.
```bash
# Change mode permission and make it executable.
chmod +x git-push-all

# Add the remote ssh path.
git remote add github <ssh-path-of-github-repository>
git remote add gitlab <ssh-path-of-gitlab-repository>

# Push changes to all remote repository.
./git-push-all
```

> - Run the following commands below.

```plaintext
cd
cd .config/nvim
touch init.lua
```

> - Copy the `init.lua` content.


## Basic Keyboard Commands
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

