FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y locales \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && apt-get install -y texlive-latex-base texlive-latex-extra texlive-fonts-recommended xzdec latexmk chktex git make \
    && rm -rf /var/lib/apt/lists/* \

ENV LANG en_US.utf8
