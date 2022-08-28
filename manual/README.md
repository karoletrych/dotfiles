To setup:
`git clone --bare https://github.com/karoletrych/dotfiles.git ~/.dotfiles`

and add this alias to .bashrc or .zshrc:
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

`dotfiles config --local status.showUntrackedFiles no`
