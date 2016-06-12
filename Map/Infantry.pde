class Infantry extends Ground{

  Infantry(){
    super(0, 0, 3, 1, 10.0, 1000);
    c = color(255, 0, 0);
    attack = 1;
    movement = 3;
    img = loadImage(0 + "inf.png");
    mvType = "foot";
    canGround = canCopter = true;
  }

  Infantry(int newx, int newy, int PNum){
    super(newx, newy, 3, 1, 10.0, 1000);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 1;
    movement = 3;
    img = loadImage(PNum + "inf.png");
    mvType = "foot";
    canGround = canCopter = true;
  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     //rect(x, y, edge, edge); 
  }
  
}