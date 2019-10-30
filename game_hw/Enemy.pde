class Enemy
{
   PImage[] myImage;
   int x;
   int y;
  
   public Enemy(PImage[] myImage, int x, int y)
   {
      this.myImage = myImage;
      this.x = x;
      this.y = y;

   }
   
   void draw(int i)
   {  
      image(myImage[i],x,y);
   }
   
   int getX()
   {
     
     return x;
   }
   
   int getY()
   {
      return y; 
   }
 
 
}
