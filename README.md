OPS Tools
========

## Tools

### findBusyThread.sh

find the busiest thread of java process.

without this script, you must following these steps:
* 1. run `top` to find the highest cpu process. (eg: pid=1123)
* 2. run `top -p 1123 -H` to find the highest cpu thread. (eg: threadId=33992), and change to hex 84c8
* also: run `ps -eL -o pid,%cpu,lwp | grep -i 4941 | sort -nr -k2 | awk '{printf("%s %s %x\n",$1,$2,$3)}' | head` can find the highest threadId
* 3. run `jstack 1123 > js.log`, and grep 84c8 in js.log to find the thread stack info

### tcpConnectionStateCounter.sh

show count of tcp connection state.
