class Infantry extends Ground{
  
  Infantry(){
    super(3, 10.0, 10.0);
    c = color(255, 0, 0);
  }
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
  
}