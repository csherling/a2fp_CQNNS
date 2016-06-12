class BCopter extends Air{

  BCopter(){
    super(0, 0, 6, 7, 10.0, 8000);
    attack = 7;
    movement = 6;
    img = loadImage(0 + "bco.png");
    uType = "copter";
    canGround = canCopter = true;
}

  BCopter(int newx, int newy, int PNum){
    super(newx, newy, 6, 7, 10.0, 8000);
    pNum = PNum;
    attack = 7;
    movement = 6;
    img = loadImage(PNum + "bco.png");
    uType = "copter";
    canGround = canCopter = true;

  }
  
  void draw(){
     image(img, x, y);
  }
  
}