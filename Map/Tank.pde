class Tank extends Ground{
  
  Tank(){
    super(0, 0, 3, 10.0, 10.0);
    c = color(0, 0, 255);
    attack = 7;
  }

  Tank(int newx, int newy, int PNum){
    super(newx, newy, 3, 10.0, 10.0);
    c = color(PNum * 80, 0, 255);
    pNum = PNum;
    attack = 5;
  }
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
  }
  
}