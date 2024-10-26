FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip -y
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD python3 main.py
