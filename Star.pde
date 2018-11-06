class Star //note that this class does NOT extend Floater
{
  private int mx,my,c1,c2,c3;
  public Star() {
    mx = (int)(Math.random()* 494) + 1;
    my = (int)(Math.random()* 494) + 1;
    c1 = (int)(Math.random()* 250) + 5;
    c2 = (int)(Math.random()* 250) + 5;
    c3 = (int)(Math.random()* 250) + 5;
  }
  public void show() {
    stroke(c1,c2,c3);
    fill(c1,c2,c3);
    ellipse(mx,my,3,3);
  }
}
