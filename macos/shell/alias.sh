alias grep='grep --color'

# Generic
alias su='su -'
alias df='df -h'

alias ll='ls -l'
alias lsa='ls -al'

alias py3='python3'
alias which='type -p'
alias mkdir='mkdir -pv'

alias daemon='supervisorctl -c ~/.supervisord.conf'
alias act='source venv/bin/activate'
# 强制遗忘docker神技
#alias docker='podman'

# 随机一个可用端口
alias randp='python -c "import random; print(random.randint(1025, 32768))"'

# 更新并清理brew管理的软件
alias brewup='brew update && brew upgrade && brew cleanup'

# 生成一个新的ssh key
alias gssh='ssh-keygen -f id_rsa -N '

# 查看外网Ip
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

# 查看本机ip
alias localhost='ipconfig getifaddr en0'

#当前时间
alias now="date +'%Y-%m-%d %T'"

# clear
alias clera='clear'
alias clar='clear'
alias cls='clear'

# make相关操作
alias mc='make clean'
alias mt='make test'
alias mkae='make'
alias maek='make'

# 目录跳转
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# kubectl setting
alias k=kubectl
alias kubeclt=kubectl
alias kubctl=kubectl
alias kc=kubectx
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods -A'
alias kgpjson='kubectl get pods -o=json'
alias kgpn='kubectl get pods -n'

# tmux
alias tl='tmux list-sessions'
alias tkss='tmux kill-session -t'
alias ta='tmux attach -t'
alias ts='tmux new-session -s'

# ide
alias typora="open -a typora"

# 加-N防止乱码
alias tree="tree -N"

#vpn
# shellcheck disable=SC2139
alias vpn="sh $HOME/.xiaomo/source/macos/vpn/viscosity.sh"

# update
# shellcheck disable=SC2139
alias update="sh $HOME/.xiaomo/source/macos/install.sh"
# shellcheck disable=SC2139
alias pull="sh $HOME/.xiaomo/source/macos/git/pull_all.sh"
alias port="nmap"

# 用法 random n ，n代表长度
alias random="openssl rand -base64"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"

# terraform
alias tplan="terraform plan"
alias "tapply"="terraform apply"
alias "tdestroy"="terraform destroy"