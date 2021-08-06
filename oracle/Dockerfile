FROM centos:7

ENV CLIENT_HOME=/usr/lib/oracle/19.5/client64
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CLIENT_HOME}/lib
ENV PATH=${PATH}:${CLIENT_HOME}/bin:/usr/local/bin

RUN yum install -y wget ncurses libnsl && \
  yum-config-manager --add-repo https://yum.oracle.com/public-yum-ol7.repo && \
  wget http://public-yum.oracle.com/RPM-GPG-KEY-oracle-ol7 -O /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle && \
  yum install -y oracle-release-el7 && \
  mv /etc/yum.repos.d/oracle-ol7.repo.incomplete /etc/yum.repos.d/oracle-ol7.repo && \
  yum install -y oracle-instantclient19.5-basic oracle-instantclient19.5-sqlplus python3 && \
  python3 -m pip install -U pip && \
  python3 -m pip install poetry cryptography==3.3.2
