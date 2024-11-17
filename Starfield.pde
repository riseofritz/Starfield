PImage img;     
PImage gmi;    
particles[] bit = new particles[147];

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
  for (int i = 0; i < bit.length; i++) {
    bit[i].reset();  // Reset each orb to the center when the user clicks
  }
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

  void moveGmi() {
    gmiRadius += gmiSpeed * 0.05;  
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
