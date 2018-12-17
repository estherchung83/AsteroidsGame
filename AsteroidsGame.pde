Spaceship bob = new Spaceship();
Star[] bit = new Star[450];
ArrayList <Asteroid> lob = new ArrayList <Asteroid>();
ArrayList <Bullet> bill = new ArrayList <Bullet>();
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
  for(int i=0; i < bill.size();i++) {
    bill.get(i).show();
    bill.get(i).move();
    if(bill.get(i).getX() > 490 || bill.get(i).getY() > 490)
      bill.remove(i);
  }
  for( int i= 0; i< lob.size(); i++)
  {
    lob.get(i).show();
    lob.get(i).move();
    float d = dist(bob.getX(), bob.getY(), lob.get(i).getX(),lob.get(i).getY());
    if (d < 10) {
      lob.remove(i);
    }
    for (int j =0;j< bill.size();j++)
    {
      float r = dist(bill.get(j).getX(), bill.get(j).getY(), lob.get(i).getX(), lob.get(i).getY());
      if (r <20)
      {
        bill.remove(j);
        lob.remove(i);
        break;
      }
      
    }
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
 if (key == ' ')
 bill.add(new Bullet(bob));
               
}
