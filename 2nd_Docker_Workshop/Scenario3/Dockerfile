#Using as base image the Ubuntu LTX version
FROM dorowu/ubuntu-desktop-lxde-vnc:latest

#Install VLC and enable execution as root
RUN apt-get update && apt-get install -y vlc \
&& sed -i 's/geteuid/getppid/' /usr/bin/vlc

#Create a text file in desktop
RUN mkdir Desktop \
&& echo "test" > ./Desktop/demo.txt

CMD ["bash"]

#To build the image type: docker build -t ubuntultx .
#To run a container type: docker run -it --rm -p 6080:80 ubuntultx
#Play!
