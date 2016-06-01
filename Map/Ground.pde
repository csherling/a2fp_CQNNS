class Ground extends Unit{
  
  Ground(){
   super(); 
  }
  
  Ground(int newx, int newy, int newMovement, float newAttack, float newDefense){
    super(newx, newy, newMovement, newAttack, newDefense);
  }
  
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
  
}