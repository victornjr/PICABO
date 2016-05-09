int contar = 0;
void setup() {
  Serial.begin(9600);

}

void loop() {
  
  if (digitalRead(2) == HIGH){
    if (contar<1){
      Serial.write(2);
      contar++;
    }
  }
  else if (digitalRead(4) == HIGH){
    if (contar<1){
      Serial.write(3);
      contar++;
    }
  }
  else if (digitalRead(5) == HIGH){
    if (contar<1){
      Serial.write(4);
      contar++;
    }
  }
  else if (digitalRead(6) == HIGH){
    if (contar<1){
      Serial.write(5);
      contar++;
    }
  }
  else if (digitalRead(7) == HIGH){
    if (contar<1){
      Serial.write(6);
      contar++;
    }
  }
  else if (digitalRead(8) == HIGH){
    if (contar<1){
      Serial.write(7);
      contar++;
    }
  }
  else{
    contar =0;
    Serial.write(1);
  }
  delay(400);
}

