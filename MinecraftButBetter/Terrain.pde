class Terrain extends World{
  //Data
  float x,y;
  float slowAnimalsDown;
  
  //Constructor
  Terrain(){
    super();
  }
  
  
  //Methods
  void display(){
    image(flowerField,x,y,200,150);
  }
  
  
}
