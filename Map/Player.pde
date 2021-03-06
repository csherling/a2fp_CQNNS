class Player{
 
  int pnum;
  color pcolor;
  CLL<Unit> units;
  CLL<Terrain> buildings;
  Unit selected;
  Terrain selectedBuilding;
  int selectedNum;
  int money;
  int numB; //EDITED
  boolean hasbuilt;
  
  Player(int newNum){
    pnum = newNum;
    int r = (int)random(256);
    int g = (int)random(256);
    int b = (int)random(256);
    pcolor = color(r, g, b);
    units = new CLL<Unit>();
    selected = null;
    selectedNum = 0;
    buildings = new CLL<Terrain>();
    selectedBuilding = null;
    money = 0;
    numB = 0; //EDITED
    hasbuilt = false;
  }
  
  void addMoney(){
    money += numB*1000; 
  }
  
  void addUnit(Unit u){
    units.add(u); 
    hasbuilt = true;
  }
  
  //void addBuilding(Terrain t){
  //  buildings.add(t);
  //}
  
  void setSel(int i){
    selected = units.get(i);
  }
  
  boolean movedAll(){
    for(int i = 0; i < units.size(); i++){
      if(units.get(i).moved == false){
        return false;
      }
    }
    return true;
  }
  
  boolean attackedAll(){
    for(int i = 0; i < units.size(); i++){
      if(units.get(i).attacked == false){
        return false;
      }
    }
    return true;
  }
  
  void cycle(){
    if(movedAll()){
      System.out.println("all moved, please end turn");
      return;
    }
    if(selectedNum == units.size() - 1) {
      selectedNum = 0;
    }
    else {
      selectedNum++;
    }
    while(units.get(selectedNum).moved){
      if(selectedNum == units.size() - 1) {
        selectedNum = 0;
      }
      else {
        selectedNum++;
      }
    }
    selected = units.get(selectedNum);
  }
  
  void removeUnit(Board B, int i){
    B._board[units.get(i).y/16][units.get(i).x/16]._unitG = null;
    units.remove(i);
    selected = units.get(i);
  }
  
}