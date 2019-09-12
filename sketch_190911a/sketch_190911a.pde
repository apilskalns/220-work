Sparkle spark3 =  new  Sparkle(100,100,15,5);
Sparkle spark2 =  new  Sparkle(200,100,55, 20);
Sparkle spark1 =  new  Sparkle(300,100,25,30);
Sparkle[] mySparks = new Sparkle[1];
void setup()
{
  size( 1000, 1000);
  for (int i = 0; i <mySparks.length; i++)
  {
    mySparks[i]= new Sparkle ((int)random(100), 
  (int)random(100),(int)random(150), (int)random(15));
  }
  
  //mySparks[0]= new Sparkle ((int)random(100), 
  //(int)random(100),(int)random(150), (int)random(15));
  
  //mySparks[0] = spark1;
  //mySparks[1] = spark2;
  //mySparks[2] = spark3;
}

void draw()
{
  background(123,20,188);
  for (int i = 0; i <mySparks.length; i++)
  {
    
    mySparks[i].draw ();
    // do the for loop stuff
    //print(i);
   
  }
  //spark1.draw();
  //spark2.draw();
  //spark3.draw();
}
