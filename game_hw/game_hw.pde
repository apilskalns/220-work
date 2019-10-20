String[] walkImages;
String[] idleImages;
PImage[] myWalkImages = new PImage [20];
PImage[] myIdleImages = new PImage [16];
int x = 20;
int y = 20;
int i = 0;
boolean walk = false;
void setup()
{
  walkImages = loadStrings("walk.txt");
  idleImages = loadStrings ("idle.txt");
  size (1000,500);
  frameRate(24);
  createAllAnimationArray();
} 

void draw()
{
  background(0);
  displayImages();
}
void createAllAnimationArray()
{
  for (int i=0; i < myWalkImages.length ; i++)
  {
    myWalkImages[i] = loadImage(walkImages[i]);
    
  }
  
}
void displayImages()
{
  image(myWalkImages[i], x, y);
  i++;
  
  if (i == 20)
  {
    i=0;
  }
  if (walk)
  image(myWalkImages[i], x, y)
  image (myIdleImages[i], x ,y)
  
  
  {
    
  }
}
