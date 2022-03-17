#!/usr/bin/awk -f 

# Usage
# - get [id] - finds and prints the record with the matching ID

# $0 CVE ID
# $1 Type
# $2 Name
# $3 Bugtracker
# $4 Modified Date
# $5 Comments

BEGIN { FS="," }

if (ARGV[1] == 'get') {
  if (ARGV[2] == $0) {
    print { '$0 - $2' }
    print { 'Type: $1 | Last Modified: $4' }
    print { 'Bugtracker URL: $3' }
    print { 'Comments' }
    print { '$5' }
  }
} else {
  print { '$0 - $2' }  
}
