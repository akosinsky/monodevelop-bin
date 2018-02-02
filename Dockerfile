FROM akosinsky/monodevelop-src

COPY monodevelop.flatpakref /home

RUN flatpak remote-add --no-gpg-verify gnome https://sdk.gnome.org/gnome.flatpakrepo && \
flatpak --assumeyes --verbose install /home/monodevelop.flatpakref

WORKDIR /home

CMD [ "/bin/bash" ]

