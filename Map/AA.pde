class AA extends Ground{

  AA(){
    super(0, 0, 6, 10.0, 10.0);
    c = color(255, 0, 0);
    attack = 5;
    movement = 6;
    img = loadImage("pokeball.png");
  }

  AA(int newx, int newy, int PNum){
    super(newx, newy, 6, 10.0, 10.0);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 5;
    movement = 6;
    img = loadImage("pokeball.png");
  }
  
  void draw(){
     fill(c);
     //image(img, x, y);
     rect(x, y, edge, edge); 
  }
  
}