class TCopter extends Air{

  TCopter(){
    super(0, 0, 6, 0, 10.0, 8000);
    attack = 0;
    movement = 6;
    img = loadImage(0 + "tco.png");
    uType = "copter";
}

  TCopter(int newx, int newy, int PNum){
    super(newx, newy, 6, 0, 10.0, 8000);
    pNum = PNum;
    attack = 0;
    movement = 6;
    img = loadImage(PNum + "tco.png");
    uType = "copter";

  }
  
  void draw(){
     image(img, x, y);
  }
  
}