FROM akosinsky/monodevelop-src

COPY monodevelop.flatpakref /home

RUN flatpak --assumeyes --verbose install /home/monodevelop.flatpakref

WORKDIR /home

CMD [ "/bin/bash" ]

