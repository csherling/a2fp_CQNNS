class Bomber extends Air{

  Bomber(){
    super(0, 0, 7, 9, 9, 0, 8000);
    movement = 7;
    img = loadImage(0 + "bom.png");
    uType = "plane";
    canGround = true;
}

  Bomber(int newx, int newy, int PNum){
    super(newx, newy, 7, 9, 9, 0, 8000);
    pNum = PNum;
    movement = 7;
    img = loadImage(PNum + "bom.png");
    uType = "plane";
    canGround = true;

  }
  
  void draw(){
     image(img, x, y);
  }
  
}