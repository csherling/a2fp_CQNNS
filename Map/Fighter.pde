class Fighter extends Air{

  Fighter(){
    super(0, 0, 9, 0, 0, 10, 0, 20000);
    movement = 9;
    img = loadImage(0 + "fig.png");
    uType = "plane";
    canCopter = canPlane = true;
}

  Fighter(int newx, int newy, int PNum){
    super(newx, newy, 9, 0, 0, 10, 0, 20000);
    pNum = PNum;
    movement = 9;
    img = loadImage(PNum + "fig.png");
    uType = "plane";
    canCopter = canPlane = true;

  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}