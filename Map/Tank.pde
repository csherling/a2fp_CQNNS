class Tank extends Ground{
  
  Tank(){
    super(0, 0, 3, 10.0, 10.0);
    c = color(0, 0, 255);
    attack = 7;
    movement = 7;
    img = loadImage(0 + "tan.png");
    mvType = "tread";
  }

  Tank(int newx, int newy, int PNum){
    super(newx, newy, 3, 10.0, 10.0);
    c = color(PNum * 80, 0, 255);
    pNum = PNum;
    attack = 5;
    movement = 7;
    img = loadImage(PNum + "tan.png");
    mvType = "tread";
  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     //rect(x, y, edge, edge); 
  }
  
}