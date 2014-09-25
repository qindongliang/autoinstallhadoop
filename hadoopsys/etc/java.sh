export PATH=.:$PATH


#export FSE_HOME="/home/search/fse2"
#export PATH=$PATH:$FSE_HOME/bin

user="dong"
export JAVA_HOME="/usr/local/jdk"
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export PATH=$PATH:$JAVA_HOME/bin

export HADOOP_HOME=/home/$user/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export CLASSPATH=.:$CLASSPATH:$HADOOP_HOME/lib
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

export ANT_HOME=/usr/local/ant
export CLASSPATH=$CLASSPATH:$ANT_HOME/lib
export PATH=$PATH:$ANT_HOME/bin

export MAVEN_HOME="/usr/local/maven"
export CLASSPATH=$CLASSPATH:$MAVEN_HOME/lib
export PATH=$PATH:$MAVEN_HOME/bin



#export FSE_HOME="/home/search/newfse3"
#export PATH=$PATH:$FSE_HOME/bin

