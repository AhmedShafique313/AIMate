import whisper

model = whisper.load_model("base")
result = model.transcribe(r'C:\Users\Personal\Documents\projects\AIMate\AIMate app other stuff\test_audio.mp3')
print(result["text"])