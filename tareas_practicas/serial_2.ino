const int analogInPin1 = PE_1;  
const int analogInPin2 = PE_2;
const int analogInPin3 = PE_3;
int sensorValue1 = 0;        
int sensorValue2 = 0; 
int v,w, inter,inter2;
char vH,wH;
char vL,wL;

void setup() {
     vH = 0;
     vL = 0;
     inter = 0;
     wH = 0;
     wL = 0;
     inter2 = 0;
     pinMode(analogInPin1, INPUT);
     pinMode(analogInPin2, INPUT);
     pinMode(analogInPin3, INPUT);
  // initialize serial communications at 9600 bps:
     Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly: 
 // Medida();
  v = analogRead(analogInPin1);
  w = analogRead(analogInPin2); 
  inter= v&(0xff00);
  vH= inter>>8;
  vL= v&0x00ff;
  inter2= w&(0xff00);
  wH= inter2>>8;
  wL= w&0x00ff;
  Serial.write(vH);
  Serial.write(vL);
  Serial.write(wH);
  Serial.write(wL);
  delay(100);
}
