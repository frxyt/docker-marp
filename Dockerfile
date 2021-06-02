# Copyright (c) 2021 FEROX YT EIRL, www.ferox.yt <devops@ferox.yt>
# Copyright (c) 2021 Jérémy WALTHER <jeremy.walther@golflima.net>
# See <https://github.com/frxyt/docker-marp> for details.

ARG MARP_VERSION=v1.1.1
FROM marpteam/marp-cli:${MARP_VERSION}

LABEL maintainer="Jérémy WALTHER <jeremy@ferox.yt>"

RUN set -ex; \
    apk add --no-cache git; \
    ln -s /home/marp/.cli/docker-entrypoint /usr/local/bin/marp;

ENTRYPOINT [ "/bin/sh", "-c" ]