# ================
# Curls for params
# ================

# curl for image
curl --location 'http://localhost:4000/upload' \
--header 'content-type: image/jpeg' \
--form 'file=@"/node-multimedia/files/images.jpeg"'

# curl for image
curl --location 'http://localhost:4000/upload' \
--header 'content-type: application/zip' \
--form 'file=@"/node-multimedia/files/sample.zip"'

curl --location 'http://localhost:4000/upload' \
--header 'content-type: audio/mpeg' \
--form 'file=@"/node-multimedia/files/test_audio.mp3"'

curl --location 'http://localhost:4000/upload' \  ,mnbfn
--header 'content-type: video/mp4' \
--form 'file=@"/node-multimedia/files/test.mp4"'

curl --location 'http://localhost:4000/upload' \
--header 'content-type: font/ttf' \
--form 'file=@"/node-multimedia/files/font.ttf"'