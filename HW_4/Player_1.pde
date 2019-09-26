class Player_1
{
  
  private int x;
  private int y;
  private Color col;
  private int size;
  
  public Player_1()
  {
     this.x = 400;
     this.y = 400;
     this.col = new Color();
     this.size = 35;
     
  }

  void draw()
  {
    fill(col.r, col.g, col.b);
    square(x, y, size);
  }
  
   void updateX(int x)
  {
   // make it so they don't leave the bounds
     this.x += x;
  }
  void updateY(int y)
  {
      this.y += y;
    
  }
  
  int getX(){return this.x;}
  int getY(){return this.y;}

}
