class Artillery extends Ground{

  Artillery(){
    super(0, 0, 5, 6, 6, 0, 6000);
    movement = 5;
    img = loadImage(0 + "art.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = true;
    minR = 2;
    maxR = 3;
    range = true;
  }

  Artillery(int newx, int newy, int PNum){
    super(newx, newy, 5, 6, 6, 0, 6000);
    pNum = PNum;
    movement = 5;
    img = loadImage(PNum + "art.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = true;
    minR = 2;
    maxR = 3;
    range = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}