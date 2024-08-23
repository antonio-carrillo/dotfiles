ZSH_PLUGINS=$HOME/.config/zsh/plugins

# Syntax highlight
source $ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Autosuggestions
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#vi-forward-char}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-word}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#vi-forward-word}")
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(forward-char)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(vi-forward-char)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(forward-word)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(vi-forward-word)

# Bindkeys
bindkey '^k' autosuggest-clear
bindkey '^o' autosuggest-execute

# fzf
source <(fzf --zsh)

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:#d0d0d0,bg:-1,bg+:#262626
  --color=hl:#7d54c3,hl+:#5fd7ff,info:#afaf87,marker:#63b00c
  --color=prompt:#6d08cb,spinner:#af5fff,pointer:#2d6b04,header:#87afaf
  --color=border:#262626,label:#aeaeae,query:#b1a6a6
  --border="double" --border-label="fzf" --border-label-pos="0" --preview-window="border-rounded"
  --padding="0,2" --margin="2,10" --prompt="?_ " --marker="×"
  --pointer=">" --separator="─" --scrollbar="│" --layout="reverse"
  --info="right"'

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
