#MOST like colored man pages
export PAGER=less
export LESS_TERMCAP_md=$'\E[1;31m'      #bold1
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_me=$'\E[m'
export LESS_TERMCAP_so=$'\E[01;7;34m'  #search highlight
export LESS_TERMCAP_se=$'\E[m'
export LESS_TERMCAP_us=$'\E[1;2;32m'    #bold2
export LESS_TERMCAP_ue=$'\E[m'
export LESS="-M -i -R --shift 5"
export LESSCHARSET=utf-8
export READNULLCMD=less
(bin-exist src-hilite-lesspipe.sh) && export LESSOPEN="| src-hilite-lesspipe.sh %s"
[ -x /usr/share/source-highlight/src-hilite-lesspipe.sh ] && export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
