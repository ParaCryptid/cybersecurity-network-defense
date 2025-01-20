
import unittest
from app import app

class CybersecurityNetworkTests(unittest.TestCase):
    def setUp(self):
        self.app = app.test_client()
        self.app.testing = True

    def test_home(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn("Cybersecurity and Network Defense", response.get_json()["message"])

    def test_analyze_threat(self):
        log_data = {"log_data": "Suspicious login attempt detected from IP 192.168.1.2"}
        response = self.app.post('/analyze_threat', json=log_data)
        self.assertEqual(response.status_code, 200)
        self.assertIn("threat_analysis", response.get_json())

    def test_inspect_traffic(self):
        packet_data = {"packet": "Raw packet data example"}
        response = self.app.post('/inspect_traffic', json=packet_data)
        self.assertEqual(response.status_code, 200)
        self.assertIn("packet_summary", response.get_json())

    def test_secure_log_data(self):
        secure_data_request = {"data": "Critical security log information"}
        response = self.app.post('/secure_log_data', json=secure_data_request)
        self.assertEqual(response.status_code, 200)
        self.assertIn("encrypted_data", response.get_json())

if __name__ == '__main__':
    unittest.main()
