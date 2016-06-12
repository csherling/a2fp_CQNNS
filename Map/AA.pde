class AA extends Ground{

  AA(){
    super(0, 0, 6, 7, 4, 6, 8000);
    img = loadImage(0 + "ant.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = canPlane = true;
}

  AA(int newx, int newy, int PNum){
    super(newx, newy, 6, 7, 4, 6, 8000);
    pNum = PNum;
    movement = 6;
    img = loadImage(PNum + "ant.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = canPlane = true;

  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}