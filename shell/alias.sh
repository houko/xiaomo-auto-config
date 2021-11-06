alias grep='grep --color'

# Generic
alias su='su -'
alias df='df -h'

alias ll='ls -l'
alias lsa='ls -al'

alias which='type -p'
alias md='mkdir -pv'

alias daemon='supervisorctl -c ~/.supervisord.conf'
alias act='source venv/bin/activate'
# 强制遗忘docker神技
#alias docker='podman'

# 随机一个可用端口
alias randp='python -c "import random; print(random.randint(1025, 32768))"'

#当前时间
alias now="date +'%Y-%m-%d %T'"

# clear
alias clera='clear'
alias clar='clear'
alias cls='clear'

# make相关操作
alias mn='make clean'
alias mt='make test'
alias mkae='make'
alias maek='make'

# 目录跳转
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
