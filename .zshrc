eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config '~/oh-my-posh/mudkip-theme.omp.json')"
export PATH="$PATH:/usr/local/nvim-linux64/bin"

eval "$(zoxide init --cmd cd zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOPATH=/home/bence/go
export GOROOT=/usr/lib/golang
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/home/bence/Downloads/idea-IU-243.23654.189/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/linuxbrew/.linuxbrew/opt/openjdk@21/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="/home/bence/zig-installs/zig-linux-x86_64-0.14.0-dev.2628+5b5c60f43:$PATH"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi

# pnpm
export PNPM_HOME="/home/bence/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$PATH:/home/bence/.modular/bin"
export PATH=$HOME/.local/bin:$PATH

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Turso
export PATH="$PATH:/home/bence/.turso"
