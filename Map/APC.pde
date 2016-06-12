class APC extends Ground{

  APC(){
    super(0, 0, 6, 0, 0, 0, 5000);
    img = loadImage(0 + "apc.png");
    mvType = "tread";
    uType = "vehicle";
    canTransport = true;
}

  APC(int newx, int newy, int PNum){
    super(newx, newy, 6, 0, 0, 0, 5000);
    pNum = PNum;
    movement = 6;
    img = loadImage(PNum + "apc.png");
    mvType = "tread";
    uType = "vehicle";
    canTransport = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}