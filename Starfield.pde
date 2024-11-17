PImage img;     
PImage gmi;    
Particle[] bit = new Particle[147]; // Regular orbs
boolean isMovingOutwards = true;

float maxRadius = 150; 
float minRadius = 75;   
int numOrbs = 5;
OddballParticle oddball; // Singular Oddball particle

void setup() {
  size(500, 500);
  img = loadImage("test-removebg-preview.png");
  gmi = loadImage("purple-modified.png"); 
  background(150);
  
  // Initialize regular particles (orbs) at the center
  for (int i = 0; i < bit.length; i++) {
    bit[i] = new Particle(250, 250); // Start all particles at the center
  }

  // Initialize a singular Oddball particle at the center
  oddball = new OddballParticle(250, 250);
}

void mousePressed() {
  isMovingOutwards = !isMovingOutwards; 
  
  // Set all regular particles and the oddball to start at the center
  for (int i = 0; i < bit.length; i++) {
    bit[i].setPosition(250, 250); // Update position to center
  }
  oddball.setPosition(250, 250); // Set oddball position to center
}

void draw() {
  background(#D8C67A); 
  
  // Move and show all regular particles (orbs)
  for (int i = 0; i < bit.length; i++) {
    bit[i].move(); 
    bit[i].show();
  }

  // Move and show the oddball particle
  oddball.move();
  oddball.show();
  
  for (int i = 0; i < numOrbs; i++) {
    if (bit[i] != null) {
      bit[i].moveGmi();  
      bit[i].showGmi();  
    }
  }
}

class Particle {
  int myColor;
  float myX, myY, mySpeed, myAngle; 
  float gmiX, gmiY, gmiSpeed, gmiAngle;  
  float gmiRadius; 
  int orbIndex; 
  
  // Particle constructor that takes initial position
  Particle(float x, float y) {
    myX = x;  
    myY = y;
    mySpeed = (float) (Math.random() * 5 + 2);  
    myAngle = (float) (Math.random() * TWO_PI); // Random angle for direction
    gmiX = x; 
    gmiY = y;
    gmiSpeed = (float) (Math.random() * 3 + 2);  
    gmiAngle = (float) (Math.random() * TWO_PI); // Random angle for direction
    gmiRadius = random(minRadius, maxRadius);  
    myColor = color((int) (Math.random() * 250), (int) (Math.random() * 250), (int) (Math.random() * 250));
    
    orbIndex = int(random(numOrbs)); 
  }

  // Method to set the position of a particle (called when mouse is pressed)
  void setPosition(float x, float y) {
    myX = x;
    myY = y;
    myAngle = (float) (Math.random() * TWO_PI);  // Reset random angle for outward motion
  }
  
  void move() {
    if (isMovingOutwards) {
      myX += mySpeed * Math.cos(myAngle);  // Move the particle outwards
      myY += mySpeed * Math.sin(myAngle);  // Move the particle outwards
    }
  }
  
  void show() {
    tint(myColor); // Apply color tint
    float size = 25;  
    image(img, myX - size, myY - size, size, size); 
    noTint(); // Reset tint to prevent affecting other images
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

// Create OddballParticle class that extends Particle
class OddballParticle extends Particle {
  
  OddballParticle(float x, float y) {
    super(x, y); // Call the parent constructor
    mySpeed *= 1.5; // Oddball moves faster
  }
  
 // @Override
  void move() {
    myX += mySpeed * Math.cos(myAngle);  // Oddball moves outwards faster
    myY += mySpeed * Math.sin(myAngle);
  }
  
//  @Override
  void show() {
    tint(255, 0, 0); // Oddball has a unique red color
    float size = 125;  // 5 times the size of a regular orb
    image(img, myX - size / 2, myY - size / 2, size, size); 
    noTint();
  }
}
