class Infantry extends Ground{
  
  Infantry(){
    super(0, 0, 3, 10.0, 10.0);
    c = color(255, 0, 0);
  }

  Infantry(int newx, int newy, int PNum){
    super(newx, newy, 3, 10.0, 10.0);
    c = color(255, 0, 0);
    pNum = PNum;
  }
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
  }
  
}