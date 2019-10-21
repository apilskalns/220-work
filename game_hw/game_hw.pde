String[] idleImages;
PImage[] myIdleImages = new PImage [16];

String[] walkImages;
PImage[] myWalkImages = new PImage [20];

String[] enemyImages;
PImage[]myEnemyImages = new PImage [2];

int x = 20;
int y = 20;
int i = 0;

boolean isWalking = false;
boolean isIdle = true;
void setup()
{
  idleImages = loadStrings ("idle.txt");
  walkImages = loadStrings("walk.txt");
  enemyImages = loadStrings ("attack.txt");
  
  size (1000,500);
  frameRate(20);
  createAllAnimationArray();
} 

void draw()
{
  background(0);
  displayImages();
}
void createAllAnimationArray()
{
  for (int i=0; i < myIdleImages.length ; i++)
  {
    myIdleImages[i] = loadImage(idleImages[i]);
    myWalkImages[i] = loadImage(walkImages[i]);
    myEnemyImages[i] = loadImage(enemyImages[i]);
    myEnemyImages.resize(200,300);
    
    //PImage myImage = loadImage ("walk.txt");
    //myImage.resize(500,400);
  }
//void displayHealth()
{
}
  
}
void displayImages()
{
  if(isIdle)
   {
     image(myIdleImages[i], x,y);
   }
   else if(isWalking)
   {
     image(myWalkImages[i],x,y); 
   }
   
   i++;
   if(i == 10)
   {
      i = 0; 
   } 
}

void keyPressed()
{
   
   if(key == 'd')
   {
       x+=10;
       isIdle = false;
       isWalking = true;
       
   }
   
   
}

void keyReleased()
{
   isIdle = true;
   isWalking = false;
}

boolean checkCollision(int rectOneRight, int rectTwoLeft,
int rectOneLeft, int rectTwoRight, int rectOneBottom, int rectTwoTop,
int rectOneTop, int rectTwoBottom)
{
   evaluates to true if rectOne and rectTwo are colliding
  if(rectOneRight > rectTwoLeft 
  && rectOneLeft < rectTwoRight 
  && rectOneBottom > rectTwoTop 
  && rectOneTop < rectTwoBottom)
  {
    return true;
  }
  else
  {
      return false;
  }
}
