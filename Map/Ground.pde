class Ground extends Unit{
  
  Ground(){
   super(); 
  }
  
  Ground(int newMovement, float newAttack, float newDefense){
    super(newMovement, newAttack, newDefense);
  }
  
  
  void draw(){
     rect(x, y, edge, edge); 
     fill(c);
  }
  
}