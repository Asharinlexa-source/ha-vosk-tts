FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir \
    vosk-tts \
    wyoming \
    num2words \
    numpy

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
