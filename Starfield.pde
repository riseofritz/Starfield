PImage img;     
PImage gmi;    
particles[] bit = new particles[147];
boolean isMovingOutwards = true;

float maxRadius = 150; 
float minRadius = 75;   
int numOrbs = 5;

void setup() {
  size(500, 500);
  img = loadImage("test-removebg-preview.png");
  gmi = loadImage("purple-modified.png"); 
  background(150);
  for (int i = 0; i < bit.length; i++) {
    bit[i] = new particles(); 
  }
}

void mousePressed(){
  isMovingOutwards = !isMovingOutwards; 
}

void draw() {
  background(#D8C67A); 
  
  for (int i = 0; i < bit.length; i++) {
    bit[i].move(); 
    bit[i].show();
  }

  for (int i = 0; i < numOrbs; i++) {
    bit[i].moveGmi();  
    bit[i].showGmi();  
  }
}

class particles {
  int myColor;
  float myX, myY, mySpeed, myAngle; 
  float gmiX, gmiY, gmiSpeed, gmiAngle;  
  float gmiRadius; 
  int orbIndex; 
  
  particles() {
    myX = 250;  
    myY = 250;
    mySpeed = (float) (Math.random() * 5 + 2);  
    myAngle = (float) (Math.random() * 2) * PI; 
    gmiX = 250; 
    gmiY = 250;
    gmiSpeed = (float) (Math.random() * 3 + 2);  
    gmiAngle = (float) (Math.random() * 2) * PI; 
    gmiRadius = random(minRadius, maxRadius);  
    myColor = color((int) (Math.random() * 250), (int) (Math.random() * 250), (int) (Math.random() * 250));
    
    orbIndex = int(random(numOrbs)); 
  }
  
  void move() {
    if (isMovingOutwards) {
      myX += mySpeed * Math.cos(myAngle);
      myY += mySpeed * Math.sin(myAngle);
    } else {
      float angleToCenter = (float) Math.atan2(250 - myY, 250 - myX); 
      myX += mySpeed * Math.cos(angleToCenter);  
      myY += mySpeed * Math.sin(angleToCenter);
    }
  }
  
  void show() {
    float size = 25;  
    image(img, myX - size, myY - size, size, size); 
  }

  void moveGmi() {
    if (isMovingOutwards) {
      gmiRadius += gmiSpeed * 0.05;  
    } else {
      
      float angleToCenter = atan2(250 - gmiY, 250 - gmiX);
      gmiX += gmiSpeed * cos(angleToCenter);  
      gmiY += gmiSpeed * sin(angleToCenter);

      
      gmiX = constrain(gmiX, 25, width - 25); 
      gmiY = constrain(gmiY, 25, height - 25);  
    }

   
    if (gmiRadius >= minRadius) {
      gmiAngle += (float) (Math.random() * 0.1 - 0.05); 
      
      
      gmiRadius += (float) (Math.random() * 5 - 2);
      gmiRadius = constrain(gmiRadius, minRadius, maxRadius);

   
      gmiX += gmiSpeed * cos(gmiAngle);
      gmiY += gmiSpeed * sin(gmiAngle);

     
      gmiX = constrain(gmiX, 25, width - 25);
      gmiY = constrain(gmiY, 25, height - 25);
    } else {
     
      gmiX = 250 + gmiRadius * cos(gmiAngle);  
      gmiY = 250 + gmiRadius * sin(gmiAngle); 
    }
  }

  void showGmi() {
    float size = 25;  
    image(gmi, gmiX - size, gmiY - size, size, size); 
  }
}
