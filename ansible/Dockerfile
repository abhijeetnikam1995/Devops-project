FROM ubuntu
RUN apt update -y 

COPY ansible/start.sh /
RUN chmod +x start.sh
CMD [ "/bin/bash", "/start.sh" ]
