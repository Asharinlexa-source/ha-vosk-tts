#!/bin/bash
set -e

MODEL_PATH="/config/addons/data/vosk_tts/data/vosk-model-tts-ru-0.10-multi"
URI="tcp://0.0.0.0:10205"
SPEECH_RATE="1.0"

echo "Starting Wyoming Vosk TTS"
echo "Model path: ${MODEL_PATH}"
echo "URI: ${URI}"
echo "Speech rate: ${SPEECH_RATE}"

if [ ! -d "${MODEL_PATH}" ]; then
  echo "ERROR: Model path does not exist: ${MODEL_PATH}"
  exit 1
fi

python -m wyoming_vosk \
  --uri "${URI}" \
  --streaming \
  --vosk-model-path "${MODEL_PATH}" \
  --speech-rate "${SPEECH_RATE}"
