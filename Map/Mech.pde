class Mech extends Ground{

  Mech(){
    super(0, 0, 2, 6, 4, 3, 0, 3000);
    movement = 2;
    img = loadImage(0 + "mec.png");
    mvType = "foot";
    uType = "troop";
    canGround = canCopter = true;
  }

  Mech(int newx, int newy, int PNum){
    super(newx, newy, 2, 6, 4, 3, 0, 3000);
    pNum = PNum;
    movement = 2;
    img = loadImage(PNum + "mec.png");
    mvType = "foot";
    uType = "troop";
    canGround = canCopter = true;
  }
  
  //void draw(){
  //   image(img, x, y);
  //}
  
}