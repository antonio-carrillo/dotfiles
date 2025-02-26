# Path
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.local/bin"

# go
[ -s "/usr/local/go/bin" ] && export PATH=$PATH:/usr/local/go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# Rust
[ -s "$HOME/.cargo/bin" ] && export PATH=$PATH:$HOME/.cargo/bin
