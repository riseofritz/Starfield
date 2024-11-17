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
  
  for (int i = 0; i < 10; i++) {
    bit[i] = new particles(250, 250); 
  }
}

void mousePressed(){
  isMovingOutwards = !isMovingOutwards; 
  for (int i = 0; i < bit.length; i++) {
    if (bit[i] == null) {
      bit[i] = new particles(mouseX, mouseY);
      break;
    }
  }
}

void draw() {
  background(#D8C67A); 
  
  for (int i = 0; i < bit.length; i++) {
    if (bit[i] != null) {
      bit[i].move(); 
      bit[i].show();
    }
  }

  for (int i = 0; i < numOrbs; i++) {
    if (bit[i] != null) {
      bit[i].moveGmi();  
      bit[i].showGmi();  
    }
  }
}

class particles {
  int myColor;
  float myX, myY, mySpeed, myAngle; 
  float gmiX, gmiY, gmiSpeed, gmiAngle;  
  float gmiRadius; 
  int orbIndex; 
  
  particles(float x, float y) {
    myX = x;  
    myY = y;
    mySpeed = (float) (Math.random() * 5 + 2);  
    myAngle = (float) (Math.random() * 2) * PI; 
    gmiX = x; 
    gmiY = y;
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
    }
  }
  
  void show() {
    tint(myColor); 
    float size = 25;  
    image(img, myX - size, myY - size, size, size); 
    noTint(); 
  }

  void moveGmi() {
    if (isMovingOutwards) {
      gmiRadius += gmiSpeed * 0.05;  
    } else {
      gmiX += gmiSpeed * cos(gmiAngle);
      gmiY += gmiSpeed * sin(gmiAngle);
    }
   
    if (gmiRadius >= minRadius) {
      gmiAngle += (float) (Math.random() * 0.1 - 0.05); 
      gmiRadius += (float) (Math.random() * 5 - 2);
      gmiRadius = constrain(gmiRadius, minRadius, maxRadius);
      gmiX += gmiSpeed * cos(gmiAngle);
      gmiY += gmiSpeed * sin(gmiAngle);
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

class OddballParticle extends particles {
  
  OddballParticle(float x, float y) {
    super(x, y); 
  }
  
  @Override
  void move() {
    myX += mySpeed * Math.cos(myAngle) * 1.5;  
    myY += mySpeed * Math.sin(myAngle) * 1.5;
  }
  
  @Override
  void show() {
    tint(255, 0, 0); 
    super.show(); 
    noTint();
  }
}
