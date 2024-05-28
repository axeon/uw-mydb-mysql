FROM mysql:8.4.0

COPY *.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/mydbEntrypoint.sh"]

CMD ["mysqld"]
