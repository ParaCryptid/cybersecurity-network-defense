
# Cybersecurity & Network Defense

## Overview
The Cybersecurity & Network Defense repository has been enhanced with AI-powered threat detection, network traffic analysis, real-time alerts, and secure data handling.

### New Features
1. **AI-Powered Threat Detection**
    - Endpoint: `/analyze_threat`
    - Method: `POST`
    - Description: Analyzes security logs for potential threats using AI.
    - Example Request:
      ```json
      {
          "log_data": "Multiple failed login attempts detected from IP 192.168.1.1"
      }
      ```
    - Example Response:
      ```json
      {
          "threat_analysis": [{"label": "NEGATIVE", "score": 0.95}]
      }
      ```

2. **Network Traffic Analysis**
    - Endpoint: `/inspect_traffic`
    - Method: `POST`
    - Description: Analyzes raw packet data for summary and inspection.
    - Example Request:
      ```json
      {
          "packet": "Raw packet data here"
      }
      ```
    - Example Response:
      ```json
      {
          "packet_summary": "Ether / IP / TCP / Raw"
      }
      ```

3. **Secure Data Handling**
    - Endpoint: `/secure_log_data`
    - Method: `POST`
    - Description: Encrypts sensitive logs or network data for secure storage or transmission.
    - Example Request:
      ```json
      {
          "data": "Confidential log information"
      }
      ```
    - Example Response:
      ```json
      {
          "encrypted_data": "abc123...",
          "iv": "456def..."
      }
      ```

4. **Real-Time Alerts**
    - Enables live alerts and updates using Flask-SocketIO.
    - Events:
      - `alert_broadcast`: Broadcast security alerts to all connected clients.
      - `receive_alert`: Receive broadcasted security alerts.

### Getting Started
1. Install dependencies from `requirements.txt`:
    ```bash
    pip install -r requirements.txt
    ```
2. Run the application:
    ```bash
    python app.py
    ```
