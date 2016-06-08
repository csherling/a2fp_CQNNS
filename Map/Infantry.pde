class Infantry extends Ground{

  Infantry(){
    super(0, 0, 3, 10.0, 10.0);
    c = color(255, 0, 0);
    attack = 1;
    movement = 3;
    img = loadImage("pokeball.png");
  }

  Infantry(int newx, int newy, int PNum){
    super(newx, newy, 3, 10.0, 10.0);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 1;
    movement = 3;
    img = loadImage("pokeball.png");
  }
  
  void draw(){
     fill(c);
     //image(img, x, y);
     rect(x, y, edge, edge); 
  }
  
}