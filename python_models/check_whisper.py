import whisper

try:
    model = whisper.load_model("base")
    print("Model loaded successfully.")
except Exception as e:
    print(f"Error loading model: {e}")
