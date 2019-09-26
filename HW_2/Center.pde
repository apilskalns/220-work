class Center 

{
  //varibles
  private int x;
  private int y;
  
  Center(int temp_x,int temp_y ){
   x=temp_x;
   y=temp_y;
  }
  
  int getx(){
    return x;
  }
  
  int gety(){
    return y;
  }
  
  void sety(int y){
    this.y = y%upper_bound_y; //use modulo to set ceneter within bounds
  }
  
    void setx(int x){
    this.x = x%upper_bound_x;
  }
    
}
