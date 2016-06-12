class Recon extends Ground{

  Recon(){
    super(0, 0, 8, 7, 3, 2, 4000);
    movement = 8;
    img = loadImage(0 + "rec.png");
    mvType = "wheel";
    uType = "vehicle";
    canGround = canCopter = true;
  }

  Recon(int newx, int newy, int PNum){
    super(newx, newy, 8, 7, 3, 2, 40000);
    pNum = PNum;
    movement = 8;
    img = loadImage(PNum + "rec.png");
    mvType = "wheel";
    uType = "vehicle";
    canGround = canCopter = true;
  }
  
  void draw(){
     image(img, x, y);
  }
  
}