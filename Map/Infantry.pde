class Infantry extends Ground{

  Infantry(){
    super(0, 0, 3, 5, 2, 2, 1000);
    movement = 3;
    img = loadImage(0 + "inf.png");
    mvType = "foot";
    uType = "troop";
    canGround = canCopter = true;
  }

  Infantry(int newx, int newy, int PNum){
    super(newx, newy, 3, 5, 2, 2, 1000);
    pNum = PNum;
    movement = 3;
    img = loadImage(PNum + "inf.png");
    mvType = "foot";
    uType = "troop";
    canGround = canCopter = true;
  }
  
  void draw(){
     image(img, x, y);
  }
  
}