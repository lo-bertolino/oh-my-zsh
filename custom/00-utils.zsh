# -------------------------------------------------------------
#                       utility functions
# -------------------------------------------------------------

# cute little thing
bin-exist() {[[ -n ${commands[$1]} ]]}

#iterm
clear-screen() { echoti clear; bureau_precmd; zle redisplay; }
zle -N clear-screen

# goood errors ツ
(bin-exist cowsay) && (bin-exist fortune) && command_not_found_handler() { fortune -s| cowsay -W 70; return 127;}

#a calculator
calc()  { awk "BEGIN{ print $* }" ; }

# assign will take last line of stdout and create an environment variable from it
# notes: a.) we avoid functions so that we can write to the current environment
#        b.) aliases don't take arguments, but we write this so that the "argument" appears
#            behind the alias, making it appear as though it is taking one, which in turn
#            becomes an actual argument into the temporary script T2.
# example: echo hello world | assign x && echo %x outputs "hello world"
alias assign="tail -1|tee _T1>/dev/null&&printf \"export \\\$1=\$(cat _T1)\nrm _T*\">_T2&&. _T2"

# Alert for long command
alias alert='notify-send 'Alert!' '''
