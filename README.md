## Dotfiles

This repository will let you generate symlinks for your bash profile and link in dotfiles
for us by various utilities.  The linking script is written to generate symlinks for shell
commands and dotfiles you want under version control.

The repository is premised under the use of a .bash_profile that sources all dotfiles in a directory
(defaulting to `.dfsrc`).  All other files put under `link/` will be symlinked to your $HOME
directory, maintaining their path.  This allows you to customize or bring under version control only
certain files that may be part of a larger package installation (a good example of this is the .atom
directory in this repo).

The `link-links.sh` script will crawl your link/ directory and symlink all of the files individually,
maintaining their path.  Big thank you to @janmosen for motivation in writing the linking library.

### Quick setup

```
chmod +x link-links.sh
./link-links.sh --dry-run
./link-links.sh
```

This will symlink all links in the /link directory to your $HOME directory.

### Bootstrapping a new PC

`bootstrap.sh`

This file provides a way of installing static dependencies for a new machine.  It is
customized for my machine, but provides an easy templates for easily modifying things.
There are some example commands of:

1. installing homebrew packages
1. installing atom packages
1. setting up a sane directory structure
1. some nice osx modifications courtesy of @mathiasbynens
1. setting up docker for you
1. installing nvm for Node JS development

### Multi-ssh configuration

a `.ssh-profiles` directory in `link/` can be combined with `set-identity` commands to switch between
different ssh keys and config files.  You can see an example of how these bash commands work below.
Along with corresponding keys and ssh config files this can be a quick and neat identity management system.
Be warned that this assumes a dynamic `~/.ssh` directory and will delete any keys you may have currently existing there.

Note: A private repository that utilizes the link-links script can be a quite effective way of managing this.
Keeping private bash commands and keys separate.

#### set-identity example

**Careful using this!!**

```
set-riguy724() {
  export SSH_PROFILE_NAME=riguy
  set-ssh
}

set-ssh() {
  rm -rf ~/.ssh
  sudo ln -fs ~/.ssh-profiles/$SSH_PROFILE_NAME ~/.ssh
}
```
