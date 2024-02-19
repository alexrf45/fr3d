shopt -s histappend
shopt -s checkwinsize
HISTFILE="$HOME/.history"
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%Y-%m-%d %T - '

force_color_prompt=yes

source "$HOME/.profile"

for file in $HOME/.bash/*; do
	source "$file"
done

tmux_default() {
	if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
		exec tmuxp load ~/.config/tmuxp/dev.yaml
	fi
}

tmux_default

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2); PS1_CMD2=$(echo $AWS_VAULT)'
PS1='\[\e[97;5;195m\]\w\[\e[0m\] \[\e[38;5;150m\]${PS1_CMD1}\[\e[0m\] ${PS1_CMD2} \n\$ '

eval $(ssh-agent) >/dev/null 2>&1

ssh-add ~/.ssh/fr3d >/dev/null 2>&1
ssh-add ~/.ssh/home >/dev/null 2>&1
ssh-add ~/.ssh/vps >/dev/null 2>&1
ssh-add ~/.ssh/jump >/dev/null 2>&1
ssh-add ~/.ssh/lab >/dev/null 2>&1

complete -C '/usr/local/bin/aws_completer' aws
