#include <ETH.h>
#include <WebServer.h>

// Define server IP and port
IPAddress serverIP(192, 168, 1, 100);  // Replace with your server's IP
const int serverPort = 8080;

// Create a web server on port 80
WebServer server(80);

void setup() {
  Serial.begin(115200);
  Serial.println("wESP32 TCP Client Example");

  // Initialize Ethernet
 

  // Optional: Set static IP
   ETH.config(IPAddress(192, 168, 1, 232), IPAddress(192, 168, 1, 1), IPAddress(255, 255, 255, 0));

  // Start the web server
  server.on("/", []() {
    server.send(200, "text/plain", "Hello from wESP32!");
  });

  server.begin();
  Serial.println("Web server started");
}

void loop() {
  // Handle incoming client requests
  server.handleClient();

  // Example: Connect to a TCP server (e.g., a remote service)
  static unsigned long lastConnectionTime = 0;
  const unsigned long connectionInterval = 5000; // Connect every 5 seconds

  if (millis() - lastConnectionTime > connectionInterval) {
    WiFiClient client;

    if (client.connect(serverIP, serverPort)) {
      Serial.println("Connected to TCP server");

      // Send a message
      client.println("GET / HTTP/1.1");
      client.println("Host: 192.168.1.100");
      client.println("Connection: close");
      client.println();

      // Read response
      while (client.connected()) {
        while (client.available()) {
          char c = client.read();
          Serial.write(c);
        }
      }

      client.stop();
      Serial.println("Disconnected from server");
    } else {
      Serial.println("Failed to connect to TCP server");
    }

    lastConnectionTime = millis();
  }
}