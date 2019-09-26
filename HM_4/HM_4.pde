

int upperBounds = 999;
int lowerBounds = 1;

ArrayList<Enemy> enemies = new ArrayList<Enemy>(10);
Player_1 p1;
Timer myTime;
void setup()
{
  size (1000,1000);
  p1 = new Player_1();
  print(enemies.size());
  for (int i = 0; i <10; i++)
  {
      enemies.add(new Enemy());
      
  }
  myTime = new Timer();
}

void draw()
{
  
  background (#D6ABFF);{
  p1.draw();
  for (int i = 0; i <enemies.size(); i++){
    print(enemies);
    print(enemies.get(i));
    enemies.get(i).draw();
    if (myTime.timer());
  }
  }
 
}
void keyPressed()
{
  // create key presses to move the rectangle
  if (key == 'w')
  {
    p1.updateY (-10);
  }
  if (key == 's')
  {
    p1.updateY (10);
  }
  if (key == 'a')
  {
    p1.updateX (-10);
  }
  if (key == 'd')
  {
    p1.updateX (10);
  }
  // check collisions
}

void mousePressed(){
     for (int i = 0; i <enemies.size(); i++){
        print("    ", mouseX," ", mouseY);
           if(enemies.get(i).checkCollision(mouseX, mouseY)){
             enemies.remove(i);
           }
       }
}
