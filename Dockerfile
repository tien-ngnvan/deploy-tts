FROM python:3.10-bullseye

RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -yq --no-install-recommends \
        git \
        build-essential \
        dpkg-dev \
        espeak-ng \
    && rm -rf /var/lib/apt/lists/*
#
RUN pip install TTS

EXPOSE 5055

CMD ["tts-server", "--port", "5055", "--model_name", "tts_models/en/vctk/vits"]
