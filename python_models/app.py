from flask import Flask, request, jsonify
import whisper
import os

app = Flask(__name__)
model = whisper.load_model("base")

@app.route('/transcribe', methods=['POST'])
def transcribe_audio():
    if 'audio' not in request.files:
        return jsonify({"error": "No audio file provided"}), 400

    audio_file = request.files['audio']
    
    # Ensure the audio directory exists
    audio_dir = "./audio"
    os.makedirs(audio_dir, exist_ok=True)
    
    audio_path = os.path.join(audio_dir, audio_file.filename)
    audio_file.save(audio_path)

    # Transcribe audio
    result = model.transcribe(audio_path)
    return jsonify({"transcription": result["text"]})

if __name__ == '__main__':
    app.run(debug=True)
