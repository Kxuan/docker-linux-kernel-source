FROM alpine
RUN apk add --update --no-cache git
RUN git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
WORKDIR /linux
RUN git remote add stable git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
RUN git fetch stable
ENTRYPOINT ["/bin/sh"]
