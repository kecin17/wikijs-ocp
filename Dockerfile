FROM requarks/wiki:latest

RUN chgrp -R 0 /var/wiki && chmod -R g=u /var/wiki

WORKDIR /var/wiki

ADD my-config.yml config.yml

EXPOSE 8080
ENTRYPOINT [ "node", "server" ]
