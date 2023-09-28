FROM ubuntu:22.04

COPY assets /assets

RUN /assets/setup.sh

EXPOSE 8080
EXPOSE 8082

ENV RESOLUTION=640x480

CMD /assets/entrypoint.sh
