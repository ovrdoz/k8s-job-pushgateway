# k8s-job-pushgateway
CronJob k8s for send metrics to prometheus pushgateway

this k8s cronjob has a very simple function which is to send endpoint metric collections to prometheus via prometheus pushgateway.

in addition to this collection this cronjob has the possibility to run any bash script from within kuberntes
