
int x1 = 35;
int y1 = 100;
int r1 = 50;
int g1 = 200;
int b1 = 50;

void setup()
{
  size(400,400);
}

void draw()
{
  background ( 255, 40, 40, 40);
    fill(255);
    circle (150, 150, 150);
    fill(r1, g1, b1);
    circle (200, 200, 70);
  r1 += 10;
  println(r1);
  println( "R1: " +r1);
  println (" G1: " + g1);
  println ("B1:" + b1);
}
