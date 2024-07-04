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
    audio_path = os.path.join("./audio", audio_file.filename)
    audio_file.save(audio_path)

    # Transcribe audio
    result = model.transcribe(audio_path)
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
    
