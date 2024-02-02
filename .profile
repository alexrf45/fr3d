export PATH="$PATH:$HOME/.local/bin:$HOME/.pulumi/bin:$HOME/.cargo/bin/:$HOME/.npm-global/bin:$GOPATH:$GOROOT"

export EDITOR=nvim
export TERM='xterm-256color'
export VISUAL=nvim

export GOPATH=$HOME/.local/bin/go
export GOROOT=$HOME/.local/bin/go/bin
export GOPROXY='https://proxy.golang.org,direct'
export GOSUMBDB='sum.golang.org'

#RUST
export RUSTUP_HOME="$HOME/.rustup"
export CARGO_HOME="$HOME/.cargo"

#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=$(tty)

source "$HOME/.cargo/env"
