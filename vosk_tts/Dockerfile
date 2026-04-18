ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-python:3.11
FROM ${BUILD_FROM}

RUN apk add --no-cache \
    bash \
    git \
    build-base \
    py3-pip

WORKDIR /opt

RUN git clone https://github.com/mitrokun/wyoming_tts_vosk.git

WORKDIR /opt/wyoming_tts_vosk

RUN pip install --no-cache-dir -r requirements.txt

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
