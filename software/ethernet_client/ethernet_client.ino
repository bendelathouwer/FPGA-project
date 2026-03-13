#include <ETH.h>
#include <WiFiClient.h>

WiFiClient client;

// Statisch IP
IPAddress local_ip(192, 168, 1, 50);
IPAddress gateway(192, 168, 1, 1);
IPAddress subnet(255, 255, 255, 0);
IPAddress server(192, 168, 1, 100);

void setup() {
  Serial.begin(115200);
  
  ETH.begin(ETH_PHY_RTL8201, 0, 16, 17, -1, ETH_CLOCK_GPIO0_IN);
  ETH.config(local_ip, gateway, subnet);

  while(!ETH.linkUp()) delay(100);
  Serial.print("ETH IP: "); Serial.println(ETH.localIP());

  client.connect(server, 80);
  client.println("GET / HTTP/1.0");
  client.println();
}

void loop() {
  while(client.available()) Serial.write(client.read());
  client.println("hallo world");
  delay(1000);
}