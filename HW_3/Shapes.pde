class Shapes{

  StringList shapes;
  
  Shapes(){
    shapes.set(0, "circle");
    shapes.set(1, "square");
    shapes.append("triangle");
    shapes.append("line");
    shapes.append("arc");
  }
  
  StringList getShapes(){return shapes;}
  
  void add(String shape){shapes.append(shape);}

}
