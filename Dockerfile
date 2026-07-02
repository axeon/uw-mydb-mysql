FROM mysql:9.7.1

COPY *.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/mydb-entrypoint.sh"]

CMD ["mysqld"]
