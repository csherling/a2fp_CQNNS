class Recon extends Ground{

  Recon(){
    super(0, 0, 8, 10.0, 10.0);
    c = color(255, 0, 0);
    attack = 4;
    movement = 8;
    img = loadImage(0 + "rec.png");
    mvType = "wheel";
  }

  Recon(int newx, int newy, int PNum){
    super(newx, newy, 8, 10.0, 10.0);
    c = color(255, 0, PNum * 80);
    pNum = PNum;
    attack = 4;
    movement = 8;
    img = loadImage(PNum + "rec.png");
    mvType = "wheel";
  }
  
  void draw(){
     fill(c);
     image(img, x, y);
     //rect(x, y, edge, edge); 
  }
  
}