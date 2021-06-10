//INFO
//Klik a=lav axelotl, s=sheep, f=flowerField, t=lav træer, b=lav buske

World minecraft = new World();

PImage flowerField;
PImage buffA;
PImage shwideImage;
PImage btree;
PImage bb;

void setup(){
  size(800,800);
  
  flowerField = loadImage("flowerfield.PNG");
  buffA = loadImage("axelotl.png");
  shwideImage = loadImage("shwide.png");
  btree = loadImage("BirchTree.png");
  bb = loadImage("bb.png");
}

void draw(){
  clear();
  minecraft.displayWorld();
}

void keyPressed(){
  minecraft.keyPress();
}
















//well hello there
