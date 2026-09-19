FROM ubuntu:latest
COPY rename.sh /rename.sh
RUN chmod +x /rename.sh
CMD ["/rename.sh"]