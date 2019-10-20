class grizzly
{

private int x;
private int y;
private PImage myImage;

//constructor 
public grizzly(int x,int y, PImage myImage)
{
  this.x = x;
  this.y = y;
  this.myImage = myImage;
  myImage.resize(50,50);
}

//methods
void draw()
{
  image(myImage,x,y);
  
}
}
