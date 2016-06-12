class Fighter extends Air{

  Fighter(){
    super(0, 0, 9, 13, 10.0, 8000);
    attack = 13;
    movement = 9;
    img = loadImage(0 + "figo.png");
    uType = "plane";
    canCopter = canPlane = true;
}

  Fighter(int newx, int newy, int PNum){
    super(newx, newy, 9, 13, 10.0, 8000);
    pNum = PNum;
    attack = 13;
    movement = 9;
    img = loadImage(PNum + "fig.png");
    uType = "plane";
    canCopter = canPlane = true;

  }
  
  void draw(){
     image(img, x, y);
  }
  
}