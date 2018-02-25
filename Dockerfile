FROM dorowu/ubuntu-desktop-lxde-vnc:latest

RUN apt-get update && apt-get install -y vlc \
&& sed -i 's/geteuid/getppid/' /usr/bin/vlc

RUN mkdir Desktop \
&& echo "test" > ./Desktop/demo.txt

CMD ["bash"]