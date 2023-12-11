# Enable colors and change prompt:
export FZF_DEFAULT_COMMAND='find .'
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH
export OPENER='rifle'
autoload -U colors && colors	# Load colors
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

unsetopt PROMPT_SP
#setopt PROMPT_SUBST ; PS1=' %{$fg[green]%}<%~%{$reset_color%}%b$(__git_ps1 " (%s)")> '
setopt PROMPT_SUBST;PS1=' %{$fg[green]%}<%~%{$reset_color%}%b> '



# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$HOME/.zhistory


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# bindkey -v ^E end-of-line
#bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'



# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[1 q"
}
zle -N zle-line-init
echo -ne '\e[1 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[1 q' ;} # Use beam shape cursor for each new prompt.






alias fetch="bfetch"
alias fq="proxychains4"
alias fy="ydict"
alias ls="ls --color"
alias dl="aria2c -x8"
alias fqxz="proxychains4 aria2c -x8"
alias cat="bat"
alias vim="nvim"
alias vi="nvim"
alias ssh="TERM=screen-256color ssh"


# Load syntax highlighting; should be last.
 source ~/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


