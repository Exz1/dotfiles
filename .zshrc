export ZSH=/home/kurnakov/.oh-my-zsh

ZSH_THEME="wezm"

plugins=(
  git
	npm
  zsh-autosuggestions
	lol
	docker
	zsh_reload
	nyan
)

source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

DOCKER_HOST=127.0.0.1

alias chromium="chromium --disable-web-security --user-data-dir"
alias rs="source .venv/bin/activate && ./manage.py runserver 0.0.0.0:8000"
alias migrate="./manage.py migrate"
