export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export TF_SWITCH_HOME=$HOME/.terraform.versions
export PATH=$TF_SWITCH_HOME:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Kubernetes 自动补全
complete -o nospace -C /opt/homebrew/bin/terraform terraform
source <(kubectl completion zsh)
# shellcheck disable=SC2078
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
complete -F __start_kubectl k