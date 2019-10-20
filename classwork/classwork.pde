PImage myImage;
grizzly myGrizzly;
grizzly[] myGrizzlies;
ArrayList<grizzly> MyGrizzliesArrayList;
int x = 0;
int y = 0;
PImage myPlayerImage;
Player myPlayer;
int xPlayer = 100;
int yPlayer = 200;
void setup()
{
  
  size (500,500); 
  
  myPlayerImage = loadImage ("beetlejuice.jpg");
  myPlayer = new Player(xPlayer,yPlayer,myPlayerImage);
  
  String[] borderCoord = loadStrings("boarder.txt");
  myGrizzlies = new grizzly[3];
  MyGrizzliesArrayList = new ArrayList<grizzly>();
  myImage = loadImage("grizzly.jpg");
  for (int i = 0; i <borderCoord.length; i++)
  {
    //read each individual line
    String[] line = borderCoord[i].split(",");
    for (int j = 0; j < line.length; j++)
   {
    println(line[j]);
    if(Integer.parseInt(line[j]) == 1)
    {
    myGrizzly = new grizzly(x,y, myImage);
    MyGrizzliesArrayList.add(myGrizzly);
    }
    x+=50;
   }
   y+=50;
   x = 0;
  }
  
  
  //myGrizzlies = new grizzly[3];
  //MyGrizzliesArrayList = new ArrayList<grizzly>();
  
  //myImage = loadImage("grizzly.jpg");
  //myGrizzly = new grizzly(200,200, myImage);
  
  //MyGrizzliesArrayList.add(myGrizzly);
  //MyGrizzliesArrayList.add(myGrizzly);
  
  //myGrizzly = new grizzly(400,400, myImage);
  //MyGrizzliesArrayList.add(myGrizzly);
  
  //myGrizzly = new grizzly(300,300, myImage);
  //MyGrizzliesArrayList.add(myGrizzly);
}


void draw()
{
  background(0);
  for(int i = 0; i < MyGrizzliesArrayList.size(); i++)
  {
    MyGrizzliesArrayList.get(i).draw();
    
  }
  //xPlayer += 10;
  //yPlayer += 3;
  myPlayer.draw(xPlayer, yPlayer);
}


void keyPressed()
{
 //print("int");
  
  if(keyCode == UP)
  {
    yPlayer -= 10;
  }
  else if(keyCode ==DOWN)
  {
    yPlayer += 10;
  }
  else if(keyCode ==LEFT)
  {
    xPlayer -= 10;
  }
  else if(keyCode ==RIGHT)
  {
    xPlayer += 10;
  }
  
}
