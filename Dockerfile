FROM alpine
RUN apk add --update --no-cache git
WORKDIR /linux
RUN git init . && \
    git remote add origin git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git && \
    git remote add stable git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git && \
    git fetch --all
ENTRYPOINT ["/bin/sh"]
