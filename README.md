# autoinstallhadoop
自动安装JDK,Maven,Ant,Maven,Hadoop的脚本
脚本开发者:三劫散仙
技术交流群：376932160

本脚本的主要作用： 给hadoop的快速大规模的集群分发安装提供了准备，能够很快的完成部分基础设施工作，
在这上面我们可以直接配置hadoop，hbase等，然后就能快速使用了。


本hadoopsys的安装包，带了如下几种开源框架

1，Ant1.9.4
2，Maven3.0.5
3，JDK1.7u25
4，Hadoop2.2.0
5，Hbase0.96.2
6，Zookeeper3.4.5
7，Hive0.13.13
全是Java有关的框架，主要目的在于安装Hadoop，其他的都是附带的基本配置

本脚本能够快速在Linux上安装JAVA环境，并部署hadoop，其中关于hadoop，hbase和Zookeeper的配置
分别在压缩包内的conf目录，关于Hive，暂时没有安装。


脚本配置说明：
1，第一个要配置的是hosts文件，不是系统的hosts文件，而是我们集群安装的集群ip
2，默认的脚本是放在root根目录下，所有的文件压缩包解压到根目录下hadoopsys文件里
3，配置etc，hadoopconf文件，hbaseconf文件，zkconf文件，后，执行repack脚本，进行重新
打包。
4，然后执行pub脚本，进行机器分发压缩包，并解压
5，最后执行begin脚本，开始执行安装
6，注意一点，在etc/java.sh和begin.sh里面需要设置一个安装用户变量，目的
是给指定的用户目录路径下解压安装框架



一切完毕之后注意配置hadoop的nd，dd，tmp，hadooptmp，hbasetmp的文件夹，有些需要自己创建，完成之后在主的
机器上，进行格式化，然后启动hadoop集群即可。

## 博客相关

（1）[微信公众号（woshigcs）：同步更新](https://github.com/qindongliang/answer_sheet_scan/blob/master/imgs/gcs.jpg)

（2）[个人站点(2018之后，同步更新）](http://8090nixi.com/) 

（3）[腾讯云社区，自动同步公众号文章](<http://qindongliang.iteye.com/>)

（4）[csdn ： (暂时同步更新)](https://blog.csdn.net/u010454030)

（5）[iteye（2018.05月之前所有的文章，之后弃用）](<http://qindongliang.iteye.com/>)  






## 我的公众号(woshigcs)

有问题可关注我的公众号留言咨询

![image](https://github.com/qindongliang/answer_sheet_scan/blob/master/imgs/gcs.jpg)
