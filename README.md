# Kubernetes Commnad Alias file, quick Privilege Escalation, Get Ip lists For Quick CLI Scripts

Put this code in your bash_rc file. 

This includes a script/alias that I stole that shortens all the crazy long kubernetes commands.

for instance 'kuberctl get nodes' will be just **kgn**

to change clusters 'kubectl config use-context' becomes **kcuc my-cluster-01**

## But wait, There is extra functionality!

One function ran by using the 'ksu' command gives you Kubernetes super user.

The other function is used when ran it gives you a list of cluster IP Addresses that you can then use in 
quick bash scripts. Lets some you want to return hostnames, uptime, the list goes on!

**Privilege Escalation**

run 'ksu 30' where 30 is the number of minutes you want access to the cluster with escalated privs. 

Running just 'ksu' will default to 15 minutes.

ksu can use multiple tokens from your kube config for multiple environments.

Escalation will be run against all tokens / clusters in your config at the same time.

**Get Cluster Node IPs**

Simply run **kgnip** for 'kubectl get nodes ips'. this returns a IP on each line. 

