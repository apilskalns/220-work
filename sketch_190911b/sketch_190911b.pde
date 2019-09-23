Shape[] myShapes = new Shape[50];
int upper_bound_x = 1000;
int upper_bound_y = 1000;

void setup()
{
  Color rand_color;
  Center rand_center;
  int rand_diameter;
  int rand_velocity;
  size(1000,1000);
  for (int i = 0; i <myShapes.length; i++)
  {
    rand_center = new Center((int)random(10,1000), (int)random(10,1000));
    rand_color = new Color((int)random(255), (int)random(255),(int)random(255));
    rand_diameter = (int)random(10,1000);
    rand_velocity = (int)random(0,10);
    myShapes[i]= new Shape(rand_center, rand_diameter, rand_velocity, rand_color, (int)random(0,3));
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
