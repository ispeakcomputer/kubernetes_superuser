# Aliases

alias k='kubectl'

alias kg='kubectl get'

alias kgp='kubectl get pods -o wide'

alias kgn='kubectl get nodes'

alias kgs='kubectl get svc'

alias kgd='kubectl get deployment'

alias kgds='kubectl get daemonset'

alias kgrs='kubectl get rs'

alias kgc='kubectl get configmap'

alias kgss='kubectl get statefulset'

alias kgpv='kubectl get pv'

alias kgpvc='kubectl get pvc'

alias kgsc='kubectl get storageclass'

alias kgrc='kubectl get rc'

alias kgns='kubectl get namespace'

alias kd='kubectl describe'

alias kdp='kubectl describe pod'

alias kdd='kubectl describe deployment'

alias kdds='kubectl describe daemonset'

alias kds='kubectl describe service'

alias kdss='kubectl describe statefulset'

alias kdrs='kubectl describe rs'

alias kdrc='kubectl describe rc'

alias kc='kubectl create'

alias kdl='kubectl delete'

alias kl='kubectl logs'

alias klf='kubectl logs -f'

alias ke='kubectl exec -i -t'

alias ktp='kubectl top pod'

alias ktn='kubectl top node'

alias kallpods='kubectl get pods --all-namespaces -o wide'

alias ksw='kubectl config use-context'

alias repos='cd ~/Repositories'

alias kcuc='kubectl config use-context'

# Get a list of IPs for the cluter nodes for feeding into BASH at the command line
alias kgnip='kubectl get nodes --no-headers -o custom-columns=NAME:.metadata.name'

# ksu alias get an arguement or defaults to 15 minutes run with 'ksu 30'

function get_super_user_status () { TIME=$1;[ -z "$TIME" ]&& TIME=15;cat ~/.kube/config | grep token: | awk '{ print $2 }'|\
while read -r line ;\
   do curl -H "Authorization: Bearer $line"  https://api.<MY URL GOES HERE>.net/v1/user/escalate?escalationTime=$TIME; \
done
}

alias ksu=get_super_user_status
