# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=250
setopt autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/projektile/.zshrc'

autoload -U colors && colors
autoload -U promptinit
autoload -Uz compinit
compinit
# End of lines added by compinstall

EDITOR="/usr/bin/vim"
export EDITOR

# ascii ps1
#PS1="%{$fg[green]%}╺─(%{$fg[magenta]%}%~%{$fg[green]%})─╼>> %{$reset_color%}"
# powerline ps1
PS1="%{$bg[white]%}%{$fg[magenta]%}⮀ %{$fg[blue]%}%~ %{$bg[green]%}%{$fg[white]%}⮀%{$reset_color%}%{$fg[green]%}⮀ %{$reset_color%}"


# Program Shortcuts & Aliases
alias mus="ncmpcpp"
alias music="ncmpcpp"
alias wee="weechat-curses"
alias transmit="transmission-daemon; sleep 2; transmission-remote --blocklist-update; transmission-remote-cli; transmission-remote --exit"
alias rice="toilet -f future --gay -w 250"
alias view="viewnior"
alias vim="stty stop '' -ixoff ; vim"


# Simple and useful shell functions
sprunge() {cat $@ | curl -F 'sprunge=<-' http://sprunge.us}

unpack () {
  if [ -f "$1" ] ; then
      case "$1" in
          *.tar.bz2) tar xvjf "$1" ;;
          *.tar.gz) tar xvzf "$1" ;;
          *.bz2) bunzip2 "$1" ;;
          *.rar) unrar e "$1" ;;
          *.gz) gunzip "$1" ;;
          *.tar) tar xvf "$1" ;;
          *.tbz2) tar xvjf "$1" ;;
          *.tgz) tar xvzf "$1" ;;
          *.zip) unzip "$1" ;;
          *.Z) uncompress "$1" ;;
          *.7z) 7z x "$1" ;;
          *) echo "don't know how to extract "$1"..." ;;
      esac
  else
      echo ""$1" is not a valid file!"
  fi
}
