class Battleship extends Water{

  Battleship(){ 
    super(0, 0, 5, 7, 7, 0, 7, 28000);
    movement = 5;
    img = loadImage(0 + "bat.png");
    mvType = "water";
    uType = "ship";
    canGround = canWater = true;
  }

  Battleship(int newx, int newy, int PNum){
    super(newx, newy, 5, 7, 7, 0, 7, 28000);
    pNum = PNum;
    movement = 5;
    img = loadImage(PNum + "bat.png");
    mvType = "water";
    uType = "ship";
    canCopter = canWater = canPlane = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}