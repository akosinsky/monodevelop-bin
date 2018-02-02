FROM akosinsky/monodevelop-src

RUN cd /opt/source/7.4.0.884 && \
./configure --profile=stable --enable-release && \
make && \
make install && \
rm -rf /opt/source

WORKDIR /home

CMD [ "/usr/local/bin/monodevelop" ]

