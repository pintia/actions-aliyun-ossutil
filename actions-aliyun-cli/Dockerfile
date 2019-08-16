FROM debian:buster-slim

WORKDIR /usr/bin
ADD http://gosspublic.alicdn.com/ossutil/1.6.5/ossutil64 /usr/bin/ossutil
RUN chmod 755 ossutil
ADD entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]
