class Air extends Unit{
  
  Air(){
   super(); 
   mvType = "air";
  }
  
  Air(int newx, int newy, int newMovement, float newAttack, float newDefense, int newCost){
    super(newx, newy, newMovement, newAttack, newDefense, newCost);
    mvType = "air";
  }
  
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
  }
  
}