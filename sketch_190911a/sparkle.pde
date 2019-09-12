class Sparkle
{
  //variables aka attributes
  
  private int x;
  private int y;
  private int diameter;
  private int velocity;
  
  //constructor
  public Sparkle (int x, int y, int diameter, int velocity)
  {
    this.x = x;
    this.y =y;
    this.diameter = diameter;
    this.velocity = velocity;
  }
  
  //methods - they do stuff
  void draw()
  {
    circle(x,y,diameter);
    //x=(int)random(100,800)
    //y+=5;
    y+=velocity;
  }
  
}
