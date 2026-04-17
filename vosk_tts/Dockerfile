FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir \
    vosk-tts \
    wyoming \
    wyoming-vosk \
    num2words \
    numpy \
    onnxruntime

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
