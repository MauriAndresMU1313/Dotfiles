# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Point to the new location in dotfiles directory
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Command color (before 230, and it was not present)
ZSH_HIGHLIGHT_STYLES[command]='fg=220'           # Valid commands
ZSH_HIGHLIGHT_STYLES[builtin]='fg=220'           # Built-in commands
ZSH_HIGHLIGHT_STYLES[alias]='fg=220'             # Aliases
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=196'     # Invalid commands (red)
# Double and single quotes colors
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=212'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=212'
# for, if, while, do, done, etc.
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=191'

# History set up
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Eza and zoxide for better ls and cd commands
#alias ls="eza --icons=always"
eval "$(zoxide init zsh)"
alias cd="z"
