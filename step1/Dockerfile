FROM oraclelinux:7.1
MAINTAINER Truc Nguyen <truc.nguyen@bonitasoft.com>

ADD linuxamd64_12102_database_1of2.zip /tmp/install/linuxamd64_12102_database_1of2.zip
ADD linuxamd64_12102_database_2of2.zip /tmp/install/linuxamd64_12102_database_2of2.zip
RUN yum -y install oracle-rdbms-server-12cR1-preinstall unzip net-tools
RUN cd /tmp/install && unzip linuxamd64_12102_database_1of2.zip && unzip linuxamd64_12102_database_2of2.zip && rm *.zip

RUN echo "oracle:oracle" | chpasswd

ENV ORACLE_BASE /u01/app/oracle

RUN mkdir -p $ORACLE_BASE && chown -R oracle:oinstall $ORACLE_BASE && chmod -R 775 $ORACLE_BASE
RUN mkdir -p /u01/app/oraInventory && chown -R oracle:oinstall /u01/app/oraInventory && chmod -R 775 /u01/app/oraInventory
ADD oraInst.loc /etc/oraInst.loc
RUN chmod 664 /etc/oraInst.loc

ENV CVUQDISK_GRP oinstall
RUN cd /tmp/install/database/rpm && rpm -iv cvuqdisk-1.0.9-1.rpm

ADD db_install.rsp /tmp/db_install.rsp
ADD install /tmp/install/install
