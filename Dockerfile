FROM node:alpine

COPY assets /assets

RUN apk add ffmpeg
RUN /assets/setup.sh
RUN cd /opt/jsmpeg-master && npm install ws

EXPOSE 8080
EXPOSE 8082

ENV RESOLUTION=640x480

CMD /assets/entrypoint.sh
