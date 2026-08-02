# Path
[ -s "/opt/nvim-linux64/bin" ] && export PATH="$PATH:/opt/nvim-linux64/bin"
[ -s "/opt/nvim-linux-x86_64/bin" ] && export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
[ -s "$HOME/.local/bin" ] && export PATH="$PATH:$HOME/.local/bin"

# go
[ -s "/usr/local/go/bin" ] && export PATH=$PATH:/usr/local/go/bin

# opencode
[ -s "$HOME/.opencode/bin" ] && export PATH=$PATH:$HOME/.opencode/bin

# nvm
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]
then
  \. "$NVM_DIR/nvm.sh"  # This loads nvm
  if [ -f "$NVM_DIR/alias/default" ]
  then
    DEFAULT_NODE_VERSION=$(cat "$NVM_DIR/alias/default")
    nvm use "$DEFAULT_NODE_VERSION" >/dev/null 2>&1
  fi
fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn
[ -s "$HOME/.yarn/bin" ] && export PATH=$PATH:$HOME/.yarn/bin

# Rust
[ -s "$HOME/.cargo/env" ] && \. "$HOME/.cargo/env"
