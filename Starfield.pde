PImage img;     
PImage gmi;    
particles[] bit = new particles[147];  
OddballParticle oddball;  

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
  

  oddball = new OddballParticle();
}

void mousePressed(){
  // Reset regular orbs
  for (int i = 0; i < bit.length; i++) {
    bit[i].reset();  
  }
  
  
  oddball.reset();
}

void draw() {
  background(#D8C67A); 
  
  for (int i = 0; i < bit.length; i++) {
    bit[i].move(); 
    bit[i].show();
  }

  oddball.move();
  oddball.show();
}

class particles {
  int myColor;
  float myX, myY, mySpeed, myAngle; 
  
  particles() {
    reset(); 
  }
  
  void reset() {
    myX = 250; 
    myY = 250; 
    mySpeed = (float) (Math.random() * 5 + 2);  
    myAngle = (float) (Math.random() * 2) * PI;  
    myColor = color((int) (Math.random() * 250), (int) (Math.random() * 250), (int) (Math.random() * 250));  
  }
  
  void move() {
    myX += mySpeed * Math.cos(myAngle);  
    myY += mySpeed * Math.sin(myAngle);  
  }
  
  void show() {
    float size = 25;  
    image(img, myX - size, myY - size, size, size);  
  }
}

class OddballParticle {
  float myX, myY, mySpeed, myAngle;
  
  OddballParticle() {
    reset();  
  }
  
  void reset() {
    myX = 250; 
    myY = 250; 
    mySpeed = (float) (Math.random() * 4 + 1);  
    myAngle = (float) (Math.random() * 2) * PI;  
  }
  
  void move() {
    myX += mySpeed * Math.cos(myAngle); 
    myY += mySpeed * Math.sin(myAngle); 
    
    
    if (frameCount % 10 == 0) {  
      myAngle += (float) (Math.random() * 0.1 - 0.05);
    }
  }
  
  void show() {
    float size = 75;  
    image(gmi, myX - size / 2, myY - size / 2, size, size);  
  }
}
