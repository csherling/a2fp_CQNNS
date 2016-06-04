class Player{
 
  int pnum;
  color pcolor;
  CLL<Unit> units;
  Unit selected;
  int selectedNum;
  
  Player(int newNum){
    pnum = newNum;
    int r = (int)random(256);
    int g = (int)random(256);
    int b = (int)random(256);
    pcolor = color(r, g, b);
    units = new CLL<Unit>();
    selected = null;
    selectedNum = 0;
  }
  
  void addUnit(Unit u){
    units.add(u); 
  }
  
  void setSel(int i){
    selected = units.get(i);
  }
  
  void cycle(){
     if(selectedNum == units.size() - 1) {
       selectedNum = 0;
     }
     else {
       selectedNum++;
     }
     selected = units.get(selectedNum);
  }
  
  void removeUnit(Board B, int i){
    B._board[units.get(i).y/10][units.get(i).x/10]._unitG = null;
    units.remove(i);
    selected = units.get(i);
  }
  
}