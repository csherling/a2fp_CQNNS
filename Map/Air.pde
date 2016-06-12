class Air extends Unit{
  
  Air(){
   super(); 
   mvType = "air";
  }
  
  Air(int newx, int newy, int newMovement, float ta, float va, float aa, int newCost){
    super(newx, newy, newMovement, ta, va, aa, newCost);
    mvType = "air";
  }
    
}