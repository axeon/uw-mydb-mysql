FROM mysql:8.4.5

COPY *.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/mydb-entrypoint.sh"]

CMD ["mysqld"]
