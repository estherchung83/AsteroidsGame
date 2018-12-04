Spaceship bob = new Spaceship();
Star[] bit = new Star[450];
ArrayList <Asteroid> lob = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for( int i= 0; i< bit.length; i++)
  {
    bit[i] = new Star();
  }
  for( int i= 0; i< 20; i++)
  {
    lob.add(new Asteroid());
  }
}
public void draw() 
{  
  background(0);
  for( int i= 0; i< bit.length; i++)
  {
    bit[i].show();
  }
  for( int i= 0; i< lob.size(); i++)
  {
    lob.get(i).show();
    lob.get(i).move();
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
