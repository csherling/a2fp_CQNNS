class Lander extends Water{

  Lander(){
    super(0, 0, 6, 0, 0, 0, 0, 12000);
    img = loadImage(0 + "lan.png");
    movement = 6;
    mvType = "lander";
    uType = "ship";
    canTransport = true;
}

  Lander(int newx, int newy, int PNum){
    super(newx, newy, 6, 0, 0, 0, 0, 12000);
    pNum = PNum;
    movement = 6;
    img = loadImage(PNum + "lan.png");
    mvType = "lander";
    uType = "ship";
    canTransport = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}