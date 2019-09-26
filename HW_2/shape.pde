class Shape
{
  
  // varibles
  
  private Center center;
  private int diameter;
  private int velocity;
  private String type;
  private Color rgb;
  private StringList shapes;
  
  //constructor
  public Shape ( Center center, int diameter, int velocity, Color rgb, int type)
  {
    this.center = center;
    this.rgb = rgb;
    this.diameter = diameter;
    this.velocity = velocity;
    print(type);
    if(type == 0){this.type = "circle";}
    if(type == 1){this.type = "square";}
    if(type == 2){this.type = "triangle";}
}
  
  //methods
  void draw()
  {
    if(this.type == "circle"){
       fill(rgb.getR(),rgb.getG(),rgb.getB());
       circle(this.center.getx(),this.center.gety(),diameter);
       center.sety(velocity+center.gety());
    }
    if(this.type == "square"){
       fill(rgb.getR(),rgb.getG(),rgb.getB());
       square(this.center.getx(),this.center.gety(),diameter);
       center.sety(velocity+center.gety());
    }
    
    if(this.type == "triangle"){
       fill(rgb.getR(),rgb.getG(),rgb.getB());
       int v1x = this.center.getx();
       int v1y = this.center.gety()+(int).5*diameter;
       int v2x = this.center.getx()-(int).5*diameter;
       int v2y = this.center.gety()-(int).5*diameter;
       int v3x = this.center.getx()+(int).5*diameter;
       int v3y = this.center.gety()+(int).5*diameter;
       print("     ---------      000000000000000  -----------    ");
       print(v1x,v1y,v2x,v2y,v3x,v3y);
       triangle(v1x,v1y,v2x,v2y,v3x,v3y);
       center.sety(velocity+center.gety());
    }
  }
}
