class Air extends Unit{
  
  Air(){
   super(); 
   mvType = "air";
  }
  
  Air(int newx, int newy, int newMovement, float ta, float va, float aa, float wa, int newCost){
    super(newx, newy, newMovement, ta, va, aa, wa, newCost);
    mvType = "air";
  }
    
}