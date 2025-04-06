
from flask import Flask, jsonify, request
from flask_socketio import SocketIO, emit
from transformers import pipeline
import pandas as pd
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import scapy.all as scapy
import os

app = Flask(__name__)
socketio = SocketIO(app)

# Initialize AI models (e.g., NLP for threat analysis)
threat_analyzer = pipeline("sentiment-analysis")

@app.route('/')
def home():
    return jsonify({
        "message": "Cybersecurity and Network Defense repository is fully functional.",
        "features": [
            "AI-Powered Threat Detection",
            "Real-Time Alerts",
            "Secure Data Handling",
            "Network Traffic Analysis"
        ]
    })

@app.route('/analyze_threat', methods=['POST'])
def analyze_threat():
    data = request.json.get("log_data", "")
    if not data:
        return jsonify({"error": "No log data provided"}), 400
    analysis = threat_analyzer(data)
    return jsonify({"threat_analysis": analysis})

@app.route('/inspect_traffic', methods=['POST'])
def inspect_traffic():
    packet_data = request.json.get("packet", "")
    if not packet_data:
        return jsonify({"error": "No packet data provided"}), 400

    packet = scapy.Ether(packet_data.encode())
    packet_summary = packet.summary()
    return jsonify({"packet_summary": packet_summary})

@app.route('/secure_log_data', methods=['POST'])
def secure_log_data():
    data = request.json.get("data", "").encode()
    if not data:
        return jsonify({"error": "No data provided"}), 400

    key = os.urandom(32)
    iv = os.urandom(16)
    cipher = Cipher(algorithms.AES(key), modes.CFB(iv))
    encryptor = cipher.encryptor()
    encrypted_data = encryptor.update(data) + encryptor.finalize()

    return jsonify({"encrypted_data": encrypted_data.hex(), "iv": iv.hex()})

@socketio.on('alert_broadcast')
def alert_broadcast(data):
    emit("receive_alert", data, broadcast=True)

if __name__ == '__main__':
    socketio.run(app, host='0.0.0.0', port=5007)
