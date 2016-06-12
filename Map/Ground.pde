class Ground extends Unit{
  
  Ground(){
   super(); 
   uType = "ground";
  }
  
  Ground(int newx, int newy, int newMovement, float newAttack, float newDefense, int newCost){
    super(newx, newy, newMovement, newAttack, newDefense, newCost);
    uType = "ground";
  }
  
  
  void draw(){
     fill(c);
     rect(x, y, edge, edge); 
  }
  
}