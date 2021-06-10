World minecraft = new World();
ArrayList<Buffxelotl> buffList = new ArrayList<Buffxelotl>();
ArrayList<FlowerField> flowerFieldList = new ArrayList<FlowerField>();
ArrayList<Shwide> shwideList = new ArrayList<Shwide>();
ArrayList<Bush> bushList = new ArrayList<Bush>();
ArrayList<Tree> treeList = new ArrayList<Tree>();

PImage flowerField;
PImage buffA;
PImage shwideImage;
PImage btree;
PImage bb;

void setup(){
  size(800,800);
   imageMode(CENTER);
  flowerField = loadImage("flowerfield.PNG");
  buffA = loadImage("axelotl.png");
  shwideImage = loadImage("shwide.png");
  btree = loadImage("BirchTree.png");
  bb = loadImage("bb.png");
}

void draw(){
  clear();
  for(FlowerField allFlowerFields : flowerFieldList){
    allFlowerFields.display();
  }
  for(Buffxelotl allBuffs : buffList){
    allBuffs.display();
    allBuffs.move();
  }
  for(Shwide allShwides : shwideList){
    allShwides.display();
    allShwides.move();
  }
  
  for(Bush allBush : bushList){
    allBush.display();
    allBush.grow();
  }
  for(Tree allTree : treeList){
    allTree.display();
    allTree.grow();
  }
  
  
}

void keyPressed(){
  if(keyPressed){
    if(key == 'b' || key == 'B'){
      //Bramble bush
      print("b");
      bushList.add(new Bush (mouseX, mouseY, random(1,3), random(80,160)));
    }
    if(key == 't' || key == 'T'){
      //Birchtree
      print("t");
      treeList.add(new Tree (mouseX, mouseY, random(1,5), random(120, 240)));
    }
    if(key == 'a' || key == 'A'){
      //Buffxelotl
      buffList.add(new Buffxelotl(mouseX, mouseY, random(1,5)));
    }
    if(key == 's' || key == 'S'){
      //Shwide
      print("s");
      shwideList.add(new Shwide(mouseX, mouseY, random(1,5)));
    }
    if(key == 'f' || key == 'F'){
      //Flower field
      print("f");
      flowerFieldList.add(new FlowerField(mouseX,mouseY));
    }
  }
}
