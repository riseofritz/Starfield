particles[] bit = new particles[200];
void setup()
{
size (500,500);
background(150);
for(int i=0; i<bit.length; i++){
  bit[i] = new particles();
}
}
void draw(){
  background(150);
  for(int i = 0; i<bit.length;i++){
    bit[i].move();
    bit[i].show();
  }
}
class particles
{
  int myColor;
  double myX, myY, mySpeed, myAngle;

  particles(){
    myX = 250;
    myY = 250;
    mySpeed = (double)(Math.random()*10);
    myAngle = (double)(Math.random()*2)*PI;
    myColor = color((int)(Math.random()*50), (int)(Math.random()*50), (int)(Math.random()*50));
  }
  
  void move(){
    myX += mySpeed * Math.cos(myAngle);
    myY += mySpeed * Math.sin(myAngle);
  }
  
  void show(){
    fill(myColor);
    ellipse((float)(myX), (float)(myY), 25, 25);
  }   
}

//class OddballParticle //inherits from Particle
//{
  //your code here
//}


