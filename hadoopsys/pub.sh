

for v in $1{$2..$3}
do

scp -r myinstall.tar.gz $v:/root/tmp

done