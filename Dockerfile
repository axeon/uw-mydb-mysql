FROM mysql:8.4.9

COPY *.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/mydb-entrypoint.sh"]

CMD ["mysqld"]
