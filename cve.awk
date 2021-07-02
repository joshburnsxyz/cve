#!/usr/bin/awk -f 

# $0 CVE ID
# $1 Type
# $2 Name
# $3 Bugtracker
# $4 Modified Date
# $5 Comments

BEGIN { FS="," }

print { '$0 - $2' }
