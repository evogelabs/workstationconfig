#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/custom/themes/

wget https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.zsh-theme

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="honukai"/g' ~/.zshrc

sed -i 's/  git/  git\n  z\n  docker\n  docker-compose/g' ~/.zshrc
