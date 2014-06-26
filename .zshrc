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

# unicode/ascii ps1
PS1="%{$fg[green]%}╺─[%{$fg[magenta]%}%~%{$fg[green]%}]─╼>> %{$reset_color%}"
# powerline ps1
#PS1="%{$bg[white]%}%{$fg[yellow]%} %{$fg[magenta]%}%~ %{$bg[red]%}%{$fg[white]%}%{$reset_color%}%{$fg[red]%} %{$reset_color%}"

# Some shell functions
unpack () {
  if [ -f "$1" ] ; then
      case "$1" in
          *.tar.bz2) tar xvjf "$1" ;;
          *.tar.gz) tar xvzf "$1" ;;
          *.bz2) bunzip2 "$1" ;;
          *.rar) rar x "$1" ;;
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

# Program Shortcuts
alias mus="ncmpcpp"
alias music="ncmpcpp"
alias wee="weechat-curses"
alias trans="transmission-daemon && transmission-remote-cli"