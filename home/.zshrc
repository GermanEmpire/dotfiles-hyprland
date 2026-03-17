# ===============================
# Minimal Lavender Zsh Setup
# ===============================

export PATH=/home/german/.cargo/bin:/home/german/.local/bin:$PATH

# Load completion
autoload -Uz compinit
compinit

# History
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# Better completion menu
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Enable colors
autoload -Uz colors && colors

# ===============================
# Plugins
# ===============================

# Autosuggestion color (lavender dim)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5a4f7a'

# fzf integration
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

# Aliases
alias ls='eza --group-directories-first --icons'
alias ll='eza -lah --group-directories-first --icons'
alias la='eza -a --group-directories-first --icons'
alias lt='eza --tree --level=2 --icons'
alias l='eza -lah --git --icons'
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias vim='nvim'
alias slurp='slurp -b '#00000088' -c '#332d49ff''

# ===============================
# Prompt
# ===============================

fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit
prompt pure
