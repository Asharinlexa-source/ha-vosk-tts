#!/usr/bin/with-contenv bashio

MODEL_PATH="$(bashio::config 'model_path')"
URI="$(bashio::config 'uri')"
SPEECH_RATE="$(bashio::config 'speech_rate')"
USE_ACCENTIZER="$(bashio::config 'use_accentizer')"

bashio::log.info "Starting Wyoming Vosk TTS"
bashio::log.info "Model path: ${MODEL_PATH}"
bashio::log.info "URI: ${URI}"
bashio::log.info "Speech rate: ${SPEECH_RATE}"
bashio::log.info "Use accentizer: ${USE_ACCENTIZER}"

if [ ! -d "${MODEL_PATH}" ]; then
  bashio::log.error "Model path does not exist: ${MODEL_PATH}"
  exit 1
fi

CMD=(python -m wyoming_vosk
  --uri "${URI}"
  --streaming
  --vosk-model-path "${MODEL_PATH}"
  --speech-rate "${SPEECH_RATE}"
)

if [ "${USE_ACCENTIZER}" = "true" ]; then
  CMD+=(--use-accentizer)
fi

exec "${CMD[@]}"
