class Animal extends World{
  float x,y;
  float speedX;
  float speedY;
  PImage animal;
  Animal(){
    
  }
  
  void display(){
    image(animal, x, y, 100,150);
  }
  
  void move(){
    x = x + speedX;
    y = y + speedY;
    if( x > width || x < 0){
      speedX = -speedX;
    }
    if( y > height || y < 0){
      speedY = -speedY;
    } 
  }
  
}
