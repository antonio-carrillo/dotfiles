# Path
[ -s "/opt/nvim-linux64/bin" ] && export PATH="$PATH:/opt/nvim-linux64/bin"
[ -s "/opt/nvim-linux-x86_64/bin" ] && export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
[ -s "$HOME/.local/bin" ] && export PATH="$PATH:$HOME/.local/bin"

# go
[ -s "/usr/local/go/bin" ] && export PATH=$PATH:/usr/local/go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"
