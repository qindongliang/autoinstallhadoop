echo "============================set alias=================================="
echo "alias vi='vim" >> .bashrc
sleep 2
echo "============================init system==================================="
chkconfig anacron off
chkconfig atd off
chkconfig auditd off
chkconfig avahi-daemon off
chkconfig bluetooth off
chkconfig cpuspeed off
chkconfig cups off
chkconfig firstboot off
chkconfig gpm off
chkconfig haldaemon off
chkconfig hidd off
chkconfig ip6tables off
chkconfig iptables off
chkconfig iscsi off
chkconfig iscsid off
chkconfig lvm2-monitor off
chkconfig mcstrans off
chkconfig mdmonitor off
chkconfig messagebus off
chkconfig nfslock off
chkconfig pcscd off
chkconfig rawdevices off
chkconfig readahead_early off
chkconfig restorecond off
chkconfig rpcidmapd off
chkconfig sendmail off
chkconfig xfs off
chkconfig yum-updatesd off
 
ulimit -SHn 65535
sed -i '/^ulimit/d' /etc/rc.local
echo "ulimit -SHn 65535" >> /etc/rc.local
sed -i '/^*/d' /etc/security/limits.conf
echo "*            -       nofile          1006154" >> /etc/security/limits.conf
sed -i '/^*/d' /etc/security/limits.d/90-nproc.conf
echo "*          soft    nproc      1006154 " >> /etc/security/limits.d/90-nproc.conf
echo "*          hard    nproc      1006154 " >> /etc/security/limits.d/90-nproc.conf

echo "echo 8061540 > /proc/sys/fs/file-max" >> /etc/rc.local
echo "SELINUX=disabled" > /etc/selinux/config
sed -i '/^IPV6INIT/d' /etc/sysconfig/network
echo "IPV6INIT=no" >> /etc/sysconfig/network
echo "install ipv6 /bin/true" > /etc/modprobe.d/disable-ipv6.conf
sed -i '/^net.ipv6.conf.all.disable_ipv6/d' /etc/sysctl.conf
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sed -i '/^StrictHostKeyChecking/d' /etc/ssh/ssh_config
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
sed -i '/^UseDNS/d' /etc/ssh/sshd_config
echo "UseDNS yes" >> /etc/ssh/sshd_config
echo "=============================初始化系统完毕======================================="

#定义一个用户名
user="dong"
#echo "=============创建search用户====================="
#useradd  search
#echo search:search |chpasswd


echo "=============安装JDK7====================="
yum remove -y java*
tar -xvf jdk-7u25-linux-x64.gz -C /usr/local
rm -f /usr/local/jdk
ln -s /usr/local/jdk1.7.0_25 /usr/local/jdk


echo "=============安装Maven====================="
rm -f /usr/local/maven
tar -zxvf apache-maven-3.0.5-bin.tar.gz -C /usr/local
ln -s /usr/local/apache-maven-3.0.5 /usr/local/maven

echo "=============安装Ant====================="
rm -f /usr/local/ant
tar -zxvf apache-ant-1.9.4-bin.tar.gz -C /usr/local
ln -s /usr/local/apache-ant-1.9.4 /usr/local/ant



echo "=============拷贝java.sh文件到/etc/profile.d/下面====================="

cp -a ./etc/java.sh /etc/profile.d/
chmod +x /etc/profile.d/java.sh
source /etc/profile


echo "=============解压Hadooop2.2====================="
tar -zxvf hadoop-2.2.0.tar.gz -C /home/$user/
ln -s /home/$user/hadoop-2.2.0/ /home/$user/hadoop
cp -a ./hadoopconf/* /home/$user/hadoop/etc/hadoop



echo "=============解压Hbase0.96.2====================="

 tar -zxvf hbase-0.96.2-hadoop2 -C /home/$user/
 ln -s /home/$user/hbase-0.96.2-hadoop2/ /home/$user/hbase
 cp -a ./hbaseconf/* /home/$user/hbase/conf


echo "=============解压Zookeeper3.4.5====================="
 tar -zxvf zookeeper-3.4.5.tar.gz -C /home/$user/
 ln -s /home/$user/zookeeper-3.4.5/ /home/$user/zookeeper
 cp -a ./zkconf /home/$user/zookeeper/conf
 mkdir -p /home/$user/zookeeper/data
 
 
 

 
 chown -R $user:$user /home/$user
 
















