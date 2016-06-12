class MedTank extends Ground{

  MedTank(){
    super(0, 0, 5, 7, 7, 6, 16000);
    movement = 5;
    img = loadImage(0 + "med.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = true;
  }

  MedTank(int newx, int newy, int PNum){
    super(newx, newy, 5, 7, 7, 6, 16000);
    pNum = PNum;
    movement = 5;
    img = loadImage(PNum + "med.png");
    mvType = "tread";
    uType = "vehicle";
    canGround = canCopter = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}