FROM python:3.11-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/mitrokun/wyoming_tts_vosk.git /opt/wyoming_tts_vosk

WORKDIR /opt/wyoming_tts_vosk

RUN pip install --no-cache-dir -r requirements.txt

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
