class Player{
 
  int pnum;
  color pcolor;
  CLL<Unit> units;
  Unit sel;
  int selNum;
  
  Player(int newNum){
    pnum = newNum;
    int r = (int)random(256);
    int g = (int)random(256);
    int b = (int)random(256);
    pcolor = color(r, g, b);
    units = new CLL<Unit>();
    sel = null;
    selNum = 0;
  }
  
  void addUnit(Unit u){
    units.add(u); 
  }
  
  void setSel(int i){
    sel = units.get(i);
  }
  
  void cycle(){
     if(selNum == unit.size() - 1){
       sel = unit.get(0);
       selNum = 0;
     }
     else{     
       selNum++;
       sel = unit.get(selNum);
     }
  }
}