class Ground extends Unit{
  
  Ground(){
   super(); 
  }
  
  Ground(int newx, int newy, int newMovement, float ta, float va, float aa, float wa, int newCost){
    super(newx, newy, newMovement, ta,va, aa, wa, newCost);
  }
    
}