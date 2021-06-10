class Animal extends World{
  float x,y;
  float w =100;
  float h = 150;
  float speedX;
  float speedY;
  float startSpeed;
  PImage animalImage;
  Boolean slowedDown = false;
  
  void display(){
    imageMode(CENTER);
    image(animalImage, x, y, w,h);
  }
  
  void move(ArrayList<FlowerField> flowerFieldList){
    //X slow down
    if(slowDown(flowerFieldList)){
      x = x + speedX/5;
      y = y + speedY/5;
    }else{
      x = x + speedX;
      y = y + speedY;
    }
    
    //Check borders
    if( x > width || x < 0){
      speedX = -speedX;
    }
    if( y > height || y < 0){
      speedY = -speedY;
    } 
  }
  
  Boolean slowDown(ArrayList<FlowerField> flowerFieldList){
    for(Terrain t : flowerFieldList){
      if(x + (w/2) > t.x &&  x + (w/2) < t.x + 200){
        if(y + (h/2)> t.y && y + (h/2) < t.y + 150){
          return true;
        }
      } 
    }
    return false;
  }
}
