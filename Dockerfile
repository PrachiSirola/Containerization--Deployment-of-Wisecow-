FROM ubuntu:22.04

RUN apt-get update && apt-get install -y fortune cowsay netcat-openbsd && \
    ln -s /usr/games/fortune /usr/bin/fortune && \
    ln -s /usr/games/cowsay /usr/bin/cowsay && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /usr/local/bin/wisecow.sh
RUN chmod +x /usr/local/bin/wisecow.sh

EXPOSE 4499
CMD ["/usr/local/bin/wisecow.sh"]
