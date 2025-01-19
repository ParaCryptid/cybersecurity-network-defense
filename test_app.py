
import pytest
from flask import Flask
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

# Test the home route
def test_home(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b'Cybersecurity and Network Defense System is fully functional.' in response.data

# Test the network monitoring route
def test_monitor_network(client):
    response = client.get('/monitor_network')
    assert response.status_code == 200
    network_status = response.get_json()
    assert "status" in network_status
    assert "active_connections" in network_status
    assert "bandwidth_usage" in network_status

# Test the threat detection route
def test_detect_threat(client):
    data = {"data": "This is a malicious attack."}
    response = client.post('/detect_threat', json=data)
    assert response.status_code == 200
    threat_response = response.get_json()
    assert "hashed_data" in threat_response
    assert threat_response["threat_detected"] is True

# Test the server info route
def test_server_info(client):
    response = client.get('/server_info')
    assert response.status_code == 200
    server_info = response.get_json()
    assert "hostname" in server_info
    assert "ip_address" in server_info
