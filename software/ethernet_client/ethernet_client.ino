#include <ETH.h>
#include <WiFiClient.h>

WiFiClient client;

IPAddress ip(192,168,1,50);
IPAddress server(192,168,1,100);

void setup() {
  Serial.begin(115200);

  ETH.begin(ETH_PHY_RTL8201, 0, 16, 17, -1, ETH_CLOCK_GPIO0_IN);
  ETH.config(ip, IPAddress(192,168,1,1), IPAddress(255,255,255,0));

  while(!ETH.linkUp()) delay(100);

  if (client.connect(server, 80)) {
    client.println("GET / HTTP/1.0");
    client.println();
  }
}

void loop() {
  while(client.available()) {
    Serial.write(client.read());
    client.println("hallo world");
    delay(1000);
  }
 
}