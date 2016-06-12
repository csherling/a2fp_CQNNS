class Building extends Terrain{
  
  Building(){
   super(); 
   building = true;
  }
  
  Building(int newx, int newy, int def, int PNum){
    super(newx, newy, 1, 1, 1, def, PNum);
    building = true;  
    occupied = false; //EDITED
  }
  
}