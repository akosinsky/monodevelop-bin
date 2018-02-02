FROM akosinsky/monodevelop-src

COPY gnome.flatpakrepo  /home
COPY monodevelop.flatpakref /home

RUN flatpak --assumeyes --verbose install /home/monodevelop.flatpakref

WORKDIR /home

CMD [ "/bin/bash" ]

