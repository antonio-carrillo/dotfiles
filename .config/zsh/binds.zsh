bindkey -v
export KEYTIMEOUT=1

# b=backwad
# f=fordward

# alt + b/f (move one char)
bindkey '^[b' backward-char
bindkey '^[f' forward-char

# ctrl + b/f (move one word)
bindkey '^b' vi-backward-word
bindkey '^f' vi-forward-word

# ctrl + alt + b/f (move the whole line)
bindkey '^[^B' beginning-of-line
bindkey '^[^F' end-of-line

# ctrl + side arrow (move one word)
bindkey '^[[1;5D' vi-backward-word
bindkey '^[[1;5C' vi-forward-word

# home/end (move the whole line)
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# ctrl + backspace (delete last word)
bindkey '^H' vi-backward-kill-word

# delete (delete next char)
bindkey '^[[3~' delete-char

# ctrl + delete (delete next word)
bindkey '^[[3;5~' kill-word

# alt + enter (insert more shell script lines)
bindkey '^[^M' self-insert-unmeta

# alt + tab (next autocomplete option)
bindkey '^I' menu-complete

# tab (previous autocomplete option)
bindkey '^[[Z' reverse-menu-complete
