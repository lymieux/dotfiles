# Minimal .bashrc file
# pwd :: ~/.bashrc

# Pre-requisites
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# First load system bashrc
if [ -f /etc/bashrc ]; then
         . /etc/bashrc
fi

# Variables/Exports
###########
export EDITOR="nano"
export VISUAL="gedit"
# Manpage colors
export LESS_TERMCAP_mb=$'\E[38;5;84m'
export LESS_TERMCAP_md=$'\E[38;5;84m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;5;37m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[38;5;99m'
# Expand history
export HISTFILESIZE=10000
export HISTSIZE=500

# Aliases
#########
# ls coreutils fork with icons next to files
# alias ls='/opt/coreutils/bin/ls --color=auto'
# removed: tstock screenfetch and onefetch
alias neofetch='neofetch --ascii_distro Arch_small'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
# Goal: remove all aliases below to figure out what they actually do!!
# chmod commands
alias chmax='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'
# archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

#######################
# Additional config variables and functions for other binaries
eval "$(thefuck --alias)"
xhost + >/dev/null
[ -f "/home/moralg/.ghcup/env" ] && source "/home/moralg/.ghcup/env" # ghcup-env
nnn_cd()
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi
}
trap nnn_cd EXIT
# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
#######################

###########
# Final PS1
PS1='\[\033[1;38;5;99m\]\W λ\[\033[00m\] '
###########

# Bashrc Notes
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
all_colors() {
  for fgbg in 38 48 ; do # Foreground / Background
      for color in {0..255} ; do # Colors
          # Display the color
          printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
          # Display 6 colors per lines
          if [ $((($color + 1) % 6)) == 4 ] ; then
              echo # New line
          fi
      done
      echo # New line
  done
}
