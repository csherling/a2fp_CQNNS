class TestUnit{
 
  int x;
  int y;
  int edge;
  color c;
  
  TestUnit(int newEdge){
    x = ((int)random(width - 2*newEdge))/10 * 10 + newEdge;
    y = ((int)random(width - 2*newEdge))/10 * 10 + newEdge;
    c = color(100, 100, 100);
    edge = newEdge;
  }
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
  
}