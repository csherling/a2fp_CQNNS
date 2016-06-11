class MedTank extends Ground{

  MedTank(){
    super(0, 0, 5, 10.0, 10.0);
    c = color(255, 0, 0);
    attack = 13;
    movement = 5;
    img = loadImage(0 + "med.png");
    mvType = "tread";
  }

  MedTank(int newx, int newy, int PNum){
    super(newx, newy, 5, 10.0, 10.0);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 13;
    movement = 5;
    img = loadImage(PNum + "med.png");
    mvType = "tread";
  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     //rect(x, y, edge, edge); 
  }
  
}