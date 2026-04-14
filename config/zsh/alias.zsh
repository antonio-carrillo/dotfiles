# Debian retrorenaming
[ -s "/usr/bin/batcat" ] && alias bat='batcat'
[ -s "/usr/bin/fdfind" ] && alias fd='fdfind'

# WSL

if command -v 'pwsh.exe' &> /dev/null
then
  alias start='pwsh.exe -c start'
elif command -v 'powershell.exe' &> /dev/null
then
  alias start='powershell.exe -c start'
fi

# shortenings
alias v='nvim'
alias vt='nvim -c "set wrap" -c "set linebreak"'

# bat
alias batm='bat --style=plain --color=never'
alias batp='bat --paging=always --wrap=never'

# eza
alias ls='eza -gh --group-directories-first --icons=auto'
alias lsm='eza -g --icons=never --color=never'
alias ls1='ls -1'
alias tree='eza --tree --icons=auto'
alias treed='tree --only-dirs'
alias treem='eza --tree --icons=never --color=never'

# Git
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gae='git add -e'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit --message'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git log'
alias glg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)" --all'
alias glgd='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)"'
alias gpl='git pull'
alias gps='git push'
alias grb='git rebase'
alias grs='git reset'
alias grss='git reset --soft'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gstl='git stash list'
alias gstpo='git stash pop'
alias gstpu='git stash push'
alias gstpum='git stash push --message'
alias gstpuu='git stash push --include-untracked'
alias gsts='git stash show'

# Kittens
alias ki='kitten icat'
alias kic='kitten icat --clear'
alias kih='kitten icat --hold'

# Python
alias py-activate='source env/bin/activate'
alias py-env='pip install \
    autopep8 \
    ptpython \
    flake8 \
    yapf \
    jedi \
    pynvim \
    tox \
    '
alias py-new-env='python3 -m venv env \
    && py-activate \
    && py-env \
    '

# Tmuxinator
alias tx='tmuxinator'

# lsblk
alias lsblkfull='lsblk -o FSTYPE,TYPE,FSSIZE,FSUSE%,NAME,LABEL,MODEL,MOUNTPOINTS'

# Clang 19 tools

clang_tools=(
    'clang++'
    'clang-format'
    'clang-pseudo'
    'clang'
    'clang-format-diff'
    'clang-query'
    'clang-apply-replacements'
    'clang-include-cleaner'
    'clang-refactor'
    'clang-change-namespace'
    'clang-include-fixer'
    'clang-rename'
    'clang-check'
    'clang-installapi'
    'clang-reorder-fields'
    'clang-cl'
    'clang-linker-wrapper'
    'clang-repl'
    'clang-cpp'
    'clang-move'
    'clang-scan-deps'
    'clangd'
    'clang-nvlink-wrapper'
    'clang-tblgen'
    'clang-doc'
    'clang-offload-bundler'
    'clang-extdef-mapping'
    'clang-offload-packager'
)

for tool in "${clang_tools[@]}"
do
    tool_19="${tool}-19"
    if ! command -v ${tool} >/dev/null && command -v ${tool_19} >/dev/null; then
        alias ${tool}=${tool_19}
    fi
done
