# How to build docker
```sh
docker compose up -d
```
# Several model TTS
- Model name: tts_models/en/ljspeech/fast_pitch
- Vocoder: vocoder_models/en/ljspeech/hifigan_v2
- speaker_id: p226 [male]; p227 [female]

# Test docker

```sh
curl 127.0.0.1:5055/api/tts \
    -H "Content-Type: multipart/form-data" \
    -F text='I have to go here' \
    -F speaker_id='p226' \
    --output p226.mp3 # if test with terminal
```

# 
