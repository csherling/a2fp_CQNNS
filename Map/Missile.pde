class Missile extends Ground{

  Missile(){
    super(0, 0, 4, 0, 0, 8, 0, 12000);
    movement = 4;
    img = loadImage(0 + "mis.png");
    mvType = "wheel";
    uType = "vehicle";
    canCopter = canPlane = true;
    minR = 3;
    maxR = 5;
    range = true;
  }

  Missile(int newx, int newy, int PNum){
    super(newx, newy, 4, 0, 0, 8, 0, 12000);
    pNum = PNum;
    movement = 4;
    img = loadImage(PNum + "mis.png");
    mvType = "wheel";
    uType = "vehicle";
    canCopter= canPlane = true;
    minR = 3;
    maxR = 5;
    range = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}