class Infantry extends Ground{
  
  Infantry(){
    super(0, 0, 3, 10.0, 10.0);
    c = color(255, 0, 0);
  }

  Infantry(int newx, int newy){
    super(newx, newy, 3, 10.0, 10.0);
    c = color(255, 0, 0);
  }
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
  
}