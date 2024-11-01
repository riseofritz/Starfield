PImage img;
particles[] bit = new particles[200];
float scaleFactor = 0.01; // Start very small

void setup() {
  size(500, 500);
  img = loadImage("bruh-removebg-preview (1) (1).png"); // Load your image file here
  background(150);
  for (int i = 0; i < bit.length; i++) {
    bit[i] = new particles();
  }
}

void draw() {
  background(150);
  for (int i = 0; i < bit.length; i++) {
    bit[i].move();
    bit[i].show();
  }
  
  // Increase scale factor over time
  scaleFactor += 0.01; // Adjust the rate of scaling as needed
}

class particles {
  int myColor;
  double myX, myY, mySpeed, myAngle;
  
  particles() {
    myX = 250;
    myY = 250;
    mySpeed = (double) (Math.random() * 10);
    myAngle = (double) (Math.random() * 2) * PI;
    myColor = color((int) (Math.random() * 250), (int) (Math.random() * 250), (int) (Math.random() * 250));
  }
  
  void move() {
    myX += mySpeed * Math.cos(myAngle);
    myY += mySpeed * Math.sin(myAngle);
  }
  
  void show() {
    // Adjust the size based on the scale factor
    float size = 25 * scaleFactor;
    // Display the image
    image(img, (float) myX - size , (float) myY - size , size, size);
  }
}
