FROM cache/fish-base:latest

ARG FISH_VERSION

# Build dependencies of the fish shell
RUN apk add --no-cache \
    cmake \
    g++ \
    make \
    ncurses-dev \
  && curl -Ls https://github.com/fish-shell/fish-shell/releases/download/${FISH_VERSION}/fish-${FISH_VERSION}.tar.gz \
    | tar -xzf - \
  && cd fish-${FISH_VERSION} \
  && mkdir build; cd build \
  && cmake .. \
  && make \
  && make install \
  && fish --version \
  && cd / \
  && rm -rf fish-${FISH_VERSION} \
  && apk del --no-cache \
    cmake \
    g++ \
    make \
    ncurses-dev

RUN addgroup -g 1000 nemo \
  && adduser -u 1000 -G nemo -s /usr/local/bin/fish -D nemo \
  && echo 'nemo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER nemo
WORKDIR /home/nemo

# Implicitly invalidate cache for the next instructions
ARG FISHER_VERSION
ARG FISHTAPE_VERSION

RUN fish -c "curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher" \
  && fish -c "fisher install jorgebucaran/fishtape"
