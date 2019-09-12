Shape[] myShapes = new Shape[50];

void setup()
{
  
  size(1000,1000);
  for (int i = 0; i <myShapes.length; i++)
  {
    myShapes[i]= new Shape ((int)random(10,1000), 
  (int)random(10,1000),(int)random(255), (int)random(5,20));
  }
  
}
void draw()
{
  background (#50B2CB);
  for (int i = 0; i <myShapes.length; i++)
  {
  myShapes[i].draw();
  }
  
}
