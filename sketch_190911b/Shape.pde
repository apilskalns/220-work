class Shape
{
  
  // varibles
  
  private int x;
  private int y;
  private int diameter;
  private int velocity;
  
  //constructor
  public Shape ( int x,int y, int diameter, int velocity)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.velocity = velocity;
  }
  
  //methods
  void draw()
  
  {
    circle(x,y,diameter);
    y+=velocity;
  }
}
