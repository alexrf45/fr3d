shopt -s histappend
shopt -s checkwinsize
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

force_color_prompt=yes

source "$HOME/.profile"

for file in $HOME/.bash/*; do
	source "$file"
done

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)'; PS1='\t \w  ${PS1_CMD1}\n\$ '

complete -C '/usr/local/bin/aws_completer' aws

eval $(ssh-agent) >/dev/null 2>&1

ssh-add ~/.ssh/fr3d >/dev/null 2>&1
ssh-add ~/.ssh/homelab >/dev/null 2>&1
ssh-add ~/.ssh/home >/dev/null 2>&1
ssh-add ~/.ssh/vps >/dev/null 2>&1

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
