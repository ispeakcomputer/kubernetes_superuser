# Kubernetes Commnad Alias file, JWT Endpoint Escalation, And Cluster Ip lists On The Fly

## Aliases in this repo

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

# Get a list of node IPs on the fly

Just run **kgnip** and get all node IPs for your current context

## Privilege Escalation

Ran by using the **ksu** command gives you Kubernetes super user via JWT endpoint.

run **ksu 30** where 30 is the number of minutes you want access to the cluster with escalated privs. 

Running just **ksu** will default to 15 minutes.

This will check in with the API using every token in your ~/.kube/config

## Installation

Append the code in your **~/.bash_rc** file. 

