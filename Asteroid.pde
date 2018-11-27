class Asteroid extends Floater  
{   
    public void setX(int x){ myCenterX =x;}
    public int getX() { return (int) myCenterX; }
    public void setY(int y) { myCenterY = y; }
    public int getY() { return (int) myCenterY; }
    public void setDirectionX(double x) { myDirectionX = x;}
    public double getDirectionX() { return myDirectionX; }
    public void setDirectionY(double y) { myDirectionY = y;}
    public double getDirectionY() { return myDirectionY; }
    public void setPointDirection(int degrees) { myPointDirection = degrees;}
    public double getPointDirection() { return myPointDirection;}
    private int rs;
    rs = (int)(Math.random()*.5);
    
    public Asteroid()
    {
      corners = 6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -11;
      xCorners[0] = -8;
      xCorners[1] = 7;
      xCorners[1] = -8;
      xCorners[2] = 13;
      xCorners[2] = 0;
      xCorners[3] = 6;
      xCorners[3] = 10;
      xCorners[4] = -11;
      xCorners[4] = 8;
      xCorners[5] = -5;
      xCorners[5] = 0;
      myCenterX = (int)(Math.random()*490) + 5;
      myCenterX = (int)(Math.random()*490) + 5;
      myPointDirection = (Math.random()* 361);
      myDirectionX = Math.random() * 5;
      myDirectionY = Math.random() * 5;
      
      
    
}
