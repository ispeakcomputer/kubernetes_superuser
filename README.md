# Kubernetes Commnad Alias file, Privilege Escalation, Ip lists For Quick CLI Scripts

Put this code in your **~/.bash_rc** file. 

This includes a alias script that shortens all the crazy long kubernetes commands.

for instance **kuberctl get nodes** will be just **kgn**

to change clusters **kubectl config use-context** becomes **kcuc my-cluster-01**

## Privilege Escalation

One function ran by using the **ksu** command gives you Kubernetes super user via JWT endpoint.

The other function is used when ran it gives you a list of cluster IP Addresses that you can then use in 
quick bash scripts. 

**Privilege Escalation**

run **ksu 30** where 30 is the number of minutes you want access to the cluster with escalated privs. 

Running just **ksu** will default to 15 minutes.

This will check in with the API using every token in your kube/config (JWT)

**Get Cluster Node IPs**

Simply run **kgnip** for 'kubectl get nodes ips'. this returns a IP on each line for feeding into quick
scripts of the fly

