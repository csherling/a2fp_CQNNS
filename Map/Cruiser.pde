class Cruiser extends Water{

  Cruiser(){
    super(0, 0, 6, 0, 0, 6, 6, 18000);
    movement = 6;
    img = loadImage(0 + "cru.png");
    mvType = "water";
    uType = "ship";
    canCopter = canWater = canPlane = true;
  }

  Cruiser(int newx, int newy, int PNum){
    super(newx, newy, 6, 0, 0, 6, 6, 18000);
    pNum = PNum;
    movement = 6;
    img = loadImage(PNum + "cru.png");
    mvType = "water";
    uType = "ship";
    canCopter = canWater = canPlane = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}