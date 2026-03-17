#include <ETH.h>
#include <WiFi.h>

IPAddress local_ip(192, 168, 1, 50);
IPAddress gateway(192, 168, 1, 1);
IPAddress subnet(255, 255, 255, 0);

WiFiServer server(5000);
WiFiClient client;

void setup() {
  Serial.begin(115200);
  delay(1000);

  ETH.begin(ETH_PHY_IP101, 0, 23, 18, -1, ETH_CLOCK_GPIO0_IN);
  ETH.config(local_ip, gateway, subnet);

  while (!ETH.linkUp()) {
    delay(100);
  }

  Serial.print("IP adres: ");
  Serial.println(ETH.localIP());

  server.begin();
  Serial.println("Server gestart");
}

void loop() {
  if (!client || !client.connected()) {
    client = server.available();
  }

  if (client && client.connected() && client.available()) {
    String msg = client.readStringUntil('\n');
    msg.trim();

    if (msg.length() > 0) {
      Serial.print("Ontvangen: ");
      Serial.println(msg);
      client.println("hallo world");
    }
  }
}