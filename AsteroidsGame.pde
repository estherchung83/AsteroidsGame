Spaceship bob = new Spaceship();
Star[] bit = new Star[450];
public void setup() 
{
  size(500,500);
  for( int i= 0; i< bit.length; i++)
  {
    bit[i] = new Star();
  }
}
public void draw() 
{  
  background(0);
  for( int i= 0; i< bit.length; i++)
  {
    bit[i].show();
  }
  bob.show(); 
  bob.move();
}
public void keyPressed() {
 if (key=='w')
 bob.accelerate(0.5);
 if (key=='s')
 bob.accelerate(-0.5);
 if (key=='a')
 bob.turn(-10);
 if (key=='d')
 bob.turn(10);
 if (key =='q')
 bob.hyperspace();
 
}
