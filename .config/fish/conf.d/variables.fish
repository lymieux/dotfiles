set EDITOR "nano"
set VISUAL "gedit"

set -x TEXMFHOME "~/.config/texmf"

set -x LESS_TERMCAP_mb (set_color $fish_color_operator)
set -x LESS_TERMCAP_md (set_color $fish_color_operator)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)
set -x LESS_TERMCAP_so (set_color $fish_color_comment)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_us (set_color $fish_color_param)

set HISTFILESIZE 10000
set HISTSIZE 500
