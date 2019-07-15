FROM debian:stretch

ADD https://github.com/sysown/proxysql/releases/download/v2.0.5/proxysql_2.0.5-dbg-debian9_amd64.deb /tmp/proxysql.deb

RUN dpkg -i /tmp/proxysql.deb && rm -rf /tmp/*

CMD ["proxysql", "-f", "-D", "/var/lib/proxysql"]