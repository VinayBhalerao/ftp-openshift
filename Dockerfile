# Pull the image
FROM stilliard/pure-ftpd:hardened

ENV FTP_USER_NAME bob
ENV FTP_USER_PASS 12345
ENV FTP_USER_HOME /home/bob
ENV PUBLICHOST localhost

EXPOSE 21 30000-30009
RUN chmod 777 /run.sh

USER root
CMD /run.sh -c 30 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $PUBLICHOST -p 30000:30059
