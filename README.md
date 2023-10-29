# Webcam
Stream video from your usb camera in one minute (ffmpeg, jsmpeg and nodejs)

# Create docker image
`git clone https://github.com/vanklompf/webcam-container && cd webcam-container && docker build . -t vanklompf/webcam-container`

# Usage
Run docker container:

`docker run --name=webcam -d --privileged -p 8080:8080 -p 8082:8082 -v /dev/video0:/dev/video0 -e RESOLUTION 640x480 vanklompf/webcam-container`

Set the environment variable `RESOLUTION` to whatever your webcam can handle

Open url:

http://localhost:8080
