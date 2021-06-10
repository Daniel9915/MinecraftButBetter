class Terrain extends World{
  float x,y;
  PImage terrainImage;
  
  void display(){
    imageMode(CORNER);
    image(terrainImage,x,y,200,150);
  }
}
