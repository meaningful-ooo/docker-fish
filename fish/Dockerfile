FROM alpine:3.12.2

# Common runtime dependencies of the fish shell
RUN apk add --no-cache \
    bc \
    busybox \
    curl \
    git \
    libpcre2-32 \
    libstdc++ \
    musl \
    ncurses-libs \
    sudo

# Suppress `sudo: setrlimit(RLIMIT_CORE): Operation not permitted` warnings
RUN echo "Set disable_coredump false" >> /etc/sudo.conf

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]
CMD [ "fish" ]
