# /bin/sh
pids=$(pgrep pure-ftpd)  
if [ -z "$pids" ]; then
  echo "No Pure-FTPd processes found"
  pass
fi
for pid in $pids; do
  kill $pid 
done
cd /media/psf/Home/Desktop/Fuzz/Binarys/pure-ftpd-1.0.49
make -j
cd ~/pure-ftpd
sudo ./sbin/pure-ftpd ./etc/pure-ftpd.conf ~/pure-ftpd/fuzz_test