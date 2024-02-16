FROM python:3.10-bullseye

RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends \
        git \
        build-essential \
        dpkg-dev \
    && rm -rf /var/lib/apt/lists/*
# 
RUN pip install TTS

EXPOSE 5055

#CMD ["../server", "--host", "0.0.0.0", "--port", "5055", "--model_name", "tts_models/en/ljspeech/tacotron2-DCA", "--vocoder_name", "vocoder_models/en/ljspeech/multiband-melgan"]
CMD ["tts-server", "--port", "5055", "--model_name", "tts_models/en/ljspeech/fast_pitch", "--vocoder_name", "vocoder_models/en/ljspeech/hifigan_v2"]
