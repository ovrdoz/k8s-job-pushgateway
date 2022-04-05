#!/bin/sh
list="google.com:443,uol.com.br:443"
for val in ${list//,/ }; do
    realm=$(echo $val | cut -d'.' -f 1)
    connected=$(timeout 0.3s curl -vs telnet://$val 2>&1 )
    if [[ $connected == *"Connected"* ]]; then
        state=0
    else
        state=1
    fi
    echo 'vpncheck_metric{realm="'$realm'"} '$state''  #| curl -s --data-binary @- http://prometheus-pushgateway.monitoring:9091/metrics/job/$realm
done


#!/bin/sh
list="google.com:443,uol.com.br:443"
for val in ${list//,/ }; do
    realm=$(echo $val | cut -d'.' -f 1)
    connected=$(timeout 0.3s curl -vs telnet://$val 2>&1 )
    echo "realm: $realm"
done
