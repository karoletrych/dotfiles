chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir ~/.zsh-plugins

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh-plugins/zsh-autocomplete
