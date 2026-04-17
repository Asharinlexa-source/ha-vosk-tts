FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN pip install --no-cache-dir \
    vosk-tts \
    wyoming \
    num2words \
    numpy \
    onnxruntime

# ВАЖНО: ставим wyoming-vosk из git
RUN git clone https://github.com/rhasspy/wyoming-vosk.git /opt/wyoming_tts_vosk

ENV PYTHONPATH=/opt/wyoming_tts_vosk

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
