String[] idleImages;
PImage[] myIdleImages = new PImage [16];

String[] walkImages;
PImage[] myWalkImages = new PImage [20];

String[] enemyImages;
PImage[]myEnemyImages = new PImage [8];

ArrayList<Enemy> myEnemies = new ArrayList<Enemy>();

int i = 0;
int x = 20;
int y = 20;
int k = 0;

int playerWidth = 587;
int playerHeight = 707;

int enemyWidth = 579;
int enemyHeight = 763;

boolean isWalking = false;
boolean isIdle = true;
Enemy myEnemy;

Enemy myEnemy2;
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
    
  }
  for (int i=0; i < myEnemyImages.length; i++)
  {
    myEnemyImages[i] = loadImage(enemyImages[i]);
    myEnemyImages[i].resize(260,380);
  }
  myEnemy = new Enemy(myEnemyImages,700,100);
  myEnemies.add(myEnemy);
  myEnemy = new Enemy(myEnemyImages,800,400);
} 
void displayHealth()
{
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
   for(int j = 0; j < myEnemies.size(); j++)
   {
      myEnemies.get(j).draw(k); 
   }
   i++;
   if(i == 10)
   {
      i = 0; 
   } 
   k++;
   if(k == 8)
   {
      k = 0; 
   } 
}

void keyPressed()
{
   
   if(key == 'd')
   {
       x+=10;
       isIdle = false;
       isWalking = true;
       if(checkCollision(x+ playerWidth, myEnemies.get(0).getX(), x, myEnemies.get(0).getX() + enemyWidth,
       y+playerHeight, myEnemies.get(0).getY(), y, myEnemies.get(0).getY() + enemyHeight))
      {
        x-=10;
        println("ouch");
       }
       else
       {
          println("Free!"); 
       }      
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
   //evaluates to true if rectOne and rectTwo are colliding;
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
