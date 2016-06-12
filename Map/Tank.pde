class Tank extends Ground{
  
  Tank(){
    super(0, 0, 7, 6, 5, 5, 7000);
    movement = 7;
    img = loadImage(0 + "tan.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = true;
  }

  Tank(int newx, int newy, int PNum){
    super(newx, newy, 7, 6, 5, 5, 7000);
    pNum = PNum;
    movement = 7;
    img = loadImage(PNum + "tan.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = true;
  }
  
  void draw(){
     image(img, x, y);
  }
  
}