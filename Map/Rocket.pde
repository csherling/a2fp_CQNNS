class Rocket extends Ground{

  Rocket(){
    super(0, 0, 4, 8, 8, 0, 8, 15000);
    movement = 4;
    img = loadImage(0 + "roc.png");
    mvType = "wheel";
    uType = "vehicle";
    canGround = canWater = true;
    minR = 3;
    maxR = 5;
    range = true;
  }

  Rocket(int newx, int newy, int PNum){
    super(newx, newy, 4, 8, 8, 0, 8, 15000);
    pNum = PNum;
    movement = 4;
    img = loadImage(PNum + "roc.png");
    mvType = "wheel";
    uType = "vehicle";
    canGround = canWater = true;
    minR = 3;
    maxR = 5;
    range = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}