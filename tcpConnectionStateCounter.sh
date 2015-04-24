#!/bin/bash
########################################
## show count of tcp connection state ##
########################################

netstat -tna | awk 'NR > 2 {
    s[$NF]++ 
}

END {
    for(v in s) {
        printf "%-12s%s\n", v, s[v]
    }
}' | sort -nr -k2,2
