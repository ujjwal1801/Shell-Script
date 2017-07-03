                                                                          
#!/bin/sh

wget -qO- https://www.checkpoint.com/ |
grep -Eoi '<a [^>]+>' |
grep -Eo 'href="[^\"]+"' |
grep -e "checkpoint" |
grep -Eo '(http|https)://[^/"]+' | sort -u |
grep -e "checkpoint"

