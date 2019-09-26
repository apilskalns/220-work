class Enemy
{
  
  private int x;
  private int y;
  private Color col;
  private int size;
 
  
  public Enemy()
  {
     Position pos = new Position();
     this.x = pos.x;
     this.y = pos.y;
     this.col = new Color();
     this.size = (int)random(20,50);
   ;
     
  }

  void draw()
  {
    fill(col.r, col.g, col.b);
    circle(x, y, size);
    trackTowards(p1.getX(), p1.getY(), 1);
  }
  
  void trackTowards(int x, int y, int speed){
    int diffX = (int)(x - this.x);
    int diffY = (int)(y - this.y);
    if(diffX != 0){
        this.x += (diffX/abs(diffX))*speed;
    }
    if(diffY != 0){
         this.y += (diffY/abs(diffY))*speed;
    }
   
  }
  
  public boolean checkCollision(int x, int y){
    if(checkXCollision(x) && checkYCollision(y)){return true;}
    return false;
  }
  
  boolean checkXCollision(int x){
    if(this.x > (x-(size/2)) && this.x < (x+(size/2))){return true;}
    else return false;
  }
  
  boolean checkYCollision(int y){
      if(this.y > (y-(size/2)) && this.y < (y+(size/2))){return true;}
      else return false;
  }
  
}
