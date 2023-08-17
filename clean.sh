# /bin/sh
pids=$(pgrep pure-ftpd)
if [ -z "$pids" ]; then
	  echo "No Pure-FTPd processes found"
	    pass
    fi
    for pid in $pids; do
	      kill $pid
      done
