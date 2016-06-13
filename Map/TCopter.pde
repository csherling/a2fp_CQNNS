class TCopter extends Air{

  TCopter(){
    super(0, 0, 6, 0, 0, 0, 0, 5000);
    movement = 6;
    img = loadImage(0 + "tco.png");
    uType = "copter";
    canAttack = false;
    canTransport = true;
}

  TCopter(int newx, int newy, int PNum){
    super(newx, newy, 6, 0, 0, 0, 0, 5000);
    pNum = PNum;
    movement = 6;
    img = loadImage(PNum + "tco.png");
    uType = "copter";
    canAttack = false;
    canTransport = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}