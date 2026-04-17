#!/usr/bin/env bash

MODEL_PATH="/data/vosk-model-tts-ru-0.10-multi"

echo "Starting Vosk TTS..."

python3 -m wyoming_vosk \
  --uri tcp://0.0.0.0:10200 \
  --vosk-model-path "${MODEL_PATH}" \
  --speech-rate 1.0 \
  --streaming
