FROM mysql:8.0.37

COPY *.sh /

RUN chmod +x *.sh

ENTRYPOINT ["/mydbEntrypoint.sh"]

CMD ["mysqld"]
