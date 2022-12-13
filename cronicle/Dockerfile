FROM ubuntu
RUN apt update -y
RUN apt install python3 -y
COPY start.py /
RUN chmod +x start.py
CMD [ "python3", "/start.py" ]
