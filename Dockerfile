FROM akosinsky/monodevelop-src

COPY gnome.flatpakrepo  /home
COPY monodevelop.flatpakref /home

RUN flatpak remote-add --no-gpg-verify gnome file://home/gnome.flatpakrepo && \
flatpak --assumeyes --verbose install /home/monodevelop.flatpakref

WORKDIR /home

CMD [ "/bin/bash" ]

