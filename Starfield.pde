PImage img;     
PImage gmi;    
particles[] bit = new particles[146];  // 146 regular orbs
OddballParticle oddball;  // Only 1 oddball particle

float maxRadius = 150; 
float minRadius = 75;   
int numOrbs = 5;

void setup() {
  size(500, 500);
  img = loadImage("test-removebg-preview.png");  // Orb image
  gmi = loadImage("purple-modified.png");  // Oddball image
  background(150);
  
  // Initialize the regular particles
  for (int i = 0; i < bit.length; i++) {
    bit[i] = new particles(); 
  }
  
  // Initialize the oddball
  oddball = new OddballParticle();
}

void mousePressed(){
  // Reset regular orbs
  for (int i = 0; i < bit.length; i++) {
    bit[i].reset();  
  }
  
  // Reset the oddball
  oddball.reset();
}

void draw() {
  background(#D8C67A); 
  
  // Move and display regular particles
  for (int i = 0; i < bit.length; i++) {
    bit[i].move(); 
    bit[i].show();
  }

  // Move and display the oddball
  oddball.move();
  oddball.show();
}

class particles {
  int myColor;
  float myX, myY, mySpeed, myAngle; 
  
  particles() {
    reset(); // Initialize the particles with a reset call to set them at the center
  }
  
  void reset() {
    myX = 250;  // Reset X position to center
    myY = 250;  // Reset Y position to center
    mySpeed = (float) (Math.random() * 5 + 2);  // Random speed
    myAngle = (float) (Math.random() * 2) * PI;  // Random angle
    myColor = color((int) (Math.random() * 250), (int) (Math.random() * 250), (int) (Math.random() * 250));  // Random color
  }
  
  void move() {
    myX += mySpeed * Math.cos(myAngle);  // Move outwards in a random direction
    myY += mySpeed * Math.sin(myAngle);  // Move outwards in a random direction
  }
  
  void show() {
    float size = 25;  
    image(img, myX - size, myY - size, size, size);  // Draw the orb image
  }
}

class OddballParticle {
  float myX, myY, mySpeed, myAngle;
  
  OddballParticle() {
    reset();  // Initialize the OddballParticle
  }
  
  void reset() {
    myX = 250;  // Reset X position to center
    myY = 250;  // Reset Y position to center
    mySpeed = (float) (Math.random() * 4 + 1);  // Slightly slower speed for Oddball (1-5)
    myAngle = (float) (Math.random() * 2) * PI;  // Random angle for the oddball
  }
  
  void move() {
    // Move the Oddball like the orbs, but with some random adjustment to its direction
    myX += mySpeed * Math.cos(myAngle);  // Move Oddball in a random direction
    myY += mySpeed * Math.sin(myAngle);  // Move Oddball in a random direction
    
    // Periodically adjust the Oddball's angle to make it move with some randomness
    if (frameCount % 10 == 0) {  // Every 10 frames, adjust the angle a little
      myAngle += (float) (Math.random() * 0.1 - 0.05);  // Small random change in angle
    }
  }
  
  void show() {
    float size = 75;  // Oddball is 3 times larger than the regular orbs
    image(gmi, myX - size / 2, myY - size / 2, size, size);  // Draw the Oddball image
  }
}
