# Kubernetes Alias file For RDEI

Put this code in your bash_rc file. 

This includes a script/alias that I wrote for obtaining RDEI superuser for kubernetes 
cluster maintenance. 

**Privilege Escalation**

run 'ksu 30' where 30 is the number of minutes you want access to the cluster. 

Running 'ksu' will default to 15 minutes.

ksu can use multiple tokens from your kube config for multiple environments.

Escalation will be run against all tokens / clusters in your config at the same time.
