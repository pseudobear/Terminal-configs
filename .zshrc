# all them history configurations
HISTFILE="$HOME/.zsh_history"
HISTSIZE=2000
SAVEHIST=2000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# fix for command:13: error
autoload -Uz compinit
compinit

# adding some of those spicy scripts
path+=~/bin/

# jazzing everything up
PROMPT='%F{75}%n%f@%m %F{159}%~%f %# '
RPROMPT='%t'

export LSCOLORS=GxFxCxDxbxegedabagaced
export CLICOLOR=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tab completions for flags for colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# aliases for colorls
alias lc='colorls -lA --sd'
alias ls='colorls'


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

eval $(thefuck --alias)

alias tkp="tmux kill-pane"
alias tkw="tmux kill-window"
