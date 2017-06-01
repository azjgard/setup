# Jordin's Dotfiles

### Instructions

1. Clone this repository into your home directory
2. In your home directory, create symlinks for:
  - ~/setup/.vimrc
  - ~/setup/.tmux.conf
4. [Install Tmux](https://tmux.github.io/)
3. [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
4. [Install Vim-Plug](https://github.com/junegunn/vim-plug) (make sure to follow the NeoVim instructions)
5. Run nvim from the terminal, and inside of nvim, run the command ":PlugInstall"

### Reference

##### Vim
See .vimrc for details

##### Tmux
  - Command key: Control + A (preface all other commands with this)
  - Horizontal Split: v
  - Vertical Split: s
  - Kill Split: x (this will also kill the window and the tmux session if all other splits are already closed)
  - New Window: c
  - Next Window: n
