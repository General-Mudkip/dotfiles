eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config '~/oh-my-posh/mudkip-theme.omp.json')"
export PATH="$PATH:/usr/local/nvim-linux64/bin"

eval "$(zoxide init --cmd cd zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOROOT=/usr/local/go/
export GOPATH=$HOME/go

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/linuxbrew/.linuxbrew/opt/openjdk@21/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

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
