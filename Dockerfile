FROM akosinsky/monodevelop-src

RUN flatpak --assumeyes --verbose install https://download.mono-project.com/repo/monodevelop.flatpakref

WORKDIR /home

CMD [ "/bin/bash" ]

