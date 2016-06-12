class AA extends Ground{

  AA(){
    super(0, 0, 6, 10.0, 10.0, 8000);
    c = color(255, 0, 0);
    attack = 5;
    movement = 6;
    img = loadImage(0 + "ant.png");
    mvType = "tread";
    canGround = canCopter = canPlane = true;
}

  AA(int newx, int newy, int PNum){
    super(newx, newy, 6, 10.0, 10.0, 8000);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 5;
    movement = 6;
    img = loadImage(PNum + "ant.png");
    mvType = "tread";
    canGround = canCopter = canPlane = true;

  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     //rect(x, y, edge, edge); 
  }
  
}