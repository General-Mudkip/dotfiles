eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config '~/oh-my-posh/mudkip-theme.omp.json')"
export PATH="$PATH:/usr/local/nvim-linux64/bin"

eval "$(zoxide init --cmd cd zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
