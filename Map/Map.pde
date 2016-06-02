Unit sel;
CLL<Unit> unit;
CLL<Player> players;
Player curr;
int selNum;
Board _board; //work out space pixel size, how many spaces, rework balance for movement

void setup(){ 
  size(500,500);
  players = new CLL<Player>();
  players.add(new Player(0));
  curr = players.get(0);
  unit = new CLL<Unit>();
  unit.add(new Infantry(1, 0));
  sel = unit.get(0);
  selNum = 0;
  _board = new Board(50);
  _board.addUnit(sel, 1, 0);
}

void draw(){
  background(0);
  /*
  for(int i = 0; i < unit.size(); i++){
    unit.get(i).draw(); 
  }
  */
  _board.draw();
  System.out.println(sel.x + ", " + sel.y);
}

void mouseClicked(){
  for(int i = 0; i<unit.size(); i++){
    if((unit.get(i).x + 10 > mouseX && unit.get(i).x < mouseX) && (unit.get(i).y + 10 > mouseY && unit.get(i).y < mouseY)){ 
      sel = unit.get(i);
      selNum = i;
    }
  }
}

void keyPressed(){
   if(keyCode == UP){
     _board.move(sel, 0, -10);
   }
   else if(keyCode == DOWN){
     _board.move(sel, 0, 10);
   }
   else if(keyCode == LEFT){
     _board.move(sel, -10, 0);
   }
   else if(keyCode == RIGHT){
     _board.move(sel, 10, 0);
   }
   else if(keyCode == ENTER){
     if(selNum == unit.size() - 1){
       sel = unit.get(0);
       selNum = 0;
     }
     else{     
       selNum++;
       sel = unit.get(selNum);
     }
   }
   else if(keyCode == BACKSPACE){
     Unit newUnit = new Infantry(0,0);
     unit.add(newUnit);
     _board.addUnit(newUnit, 0, 0);
   }
}