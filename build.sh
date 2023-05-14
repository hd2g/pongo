echo -n "こんにちは、わたしはイケイケな陽キャです" >text.txt

SPEAKER_ID=31

curl -s \
    -X POST \
    "127.0.0.1:50021/audio_query?speaker=${SPEAKER_ID}"\
    --get --data-urlencode text@text.txt \
    > query.json

curl -s \
    -H "Content-Type: application/json" \
    -X POST \
    -d @query.json \
    "127.0.0.1:50021/synthesis?speaker=${SPEAKER_ID}" \
    > audio.wav
