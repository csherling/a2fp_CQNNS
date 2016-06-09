class Mech extends Ground{

  Mech(){
    super(0, 0, 2, 10.0, 10.0);
    c = color(255, 0, 0);
    attack = 4;
    movement = 2;
    img = loadImage("pokeball.png");
  }

  Mech(int newx, int newy, int PNum){
    super(newx, newy, 2, 10.0, 10.0);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 4;
    movement = 2;
    img = loadImage("pokeball.png");
  }
  
  void draw(){
     fill(c);
     //image(img, x, y);
     rect(x, y, edge, edge); 
  }
  
}