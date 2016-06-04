//Unit sel;
//CLL<Unit> unit;
CLL<Player> players;
Player curr;
int playanum;
//int selNum;
Board _board; //work out space pixel size, how many spaces, rework balance for movement

void setup(){ 
  size(500,500);
  fill(255,255,255);
  _board = new Board(50);
  players = new CLL<Player>();
  players.add(new Player(0));
  players.add(new Player(1));
  curr = players.get(0);
  curr.units.add(new Infantry(2, 0, 0, 0));
  curr.selected = curr.units.get(0);
  curr.selectedNum = 0;
  _board.addUnit(curr.selected, 2, 0);
  
  curr = players.get(1);
  curr.units.add(new Tank(1, 0, 1, 0));
  curr.selected = curr.units.get(0);
  curr.selectedNum = 0;
  _board.addUnit(curr.selected, 1, 0);

  curr = players.get(0);
  playanum = 0;
}

void draw(){
  background(0);
  /*
  for(int i = 0; i < unit.size(); i++){
    unit.get(i).draw(); 
  }
  */
  _board.draw();
  //System.out.println(sel.x + ", " + sel.y);
}

void mouseClicked(){
  for(int i = 0; i< curr.units.size(); i++){
    if((curr.units.get(i).x + 10 > mouseX && curr.units.get(i).x < mouseX) && (curr.units.get(i).y + 10 > mouseY && curr.units.get(i).y < mouseY)){ 
      curr.selected = curr.units.get(i);
      curr.selectedNum = i;
    }
  }
}

void keyPressed(){
  if (key == 'w' || key == 'W') {
      if (curr.selected.y != 0 && _board._board[(curr.selected.y - 10)/10][curr.selected.x/10]._unitG != null) {
        //Player opponent = players.get(_board._board[(curr.selected.y - 10)/10][curr.selected.x/10]._unitG.pNum);
        curr.selected.attack(_board, _board._board[ (curr.selected.y - 10)/10][curr.selected.x/10]._unitG);
      }
      else System.out.println("No unit to attack.");
  }
  else if (key == 'a' || key == 'A') {
    if (curr.selected.x != 0 && _board._board[curr.selected.y/10][(curr.selected.x - 10)/10]._unitG != null) {
      //Player opponent = players.get(_board._board[curr.selected.y/10][(curr.selected.x - 10)/10]._unitG.pNum);
      curr.selected.attack(_board, _board._board[curr.selected.y/10][(curr.selected.x - 10)/10]._unitG);
    }
    else System.out.println("No unit to attack.");
  }
  else if (key == 's' || key == 'S') {
    if (curr.selected.y != 490 && _board._board[(curr.selected.y + 10)/10][curr.selected.x/10]._unitG != null) {
      //Player opponent = players.get(_board._board[(curr.selected.y + 10)/10][curr.selected.x/10]._unitG.pNum);
      curr.selected.attack(_board, _board._board[(curr.selected.y + 10)/10][curr.selected.x/10]._unitG);
    }
    else System.out.println("No unit to attack.");
  }
  else if (key == 'd' || key == 'D') {
    if (curr.selected.x != 490 && _board._board[curr.selected.y/10][(curr.selected.x + 10)/10]._unitG != null) {
      //Player opponent = players.get(_board._board[curr.selected.y/10][(curr.selected.x + 10)/10]._unitG.pNum);
      curr.selected.attack(_board, _board._board[curr.selected.y/10][(curr.selected.x + 10)/10]._unitG);
    }
    else System.out.println("No unit to attack.");
  }
   else if(keyCode == UP){
     _board.move(curr.selected, 0, -10);
   }
   else if(keyCode == DOWN){
     _board.move(curr.selected, 0, 10);
   }
   else if(keyCode == LEFT){
     _board.move(curr.selected, -10, 0);
   }
   else if(keyCode == RIGHT){
     _board.move(curr.selected, 10, 0);
   }
   else if(keyCode == ENTER){
     if(curr.selectedNum == curr.units.size() - 1) {
       curr.selectedNum = 0;
     }
     else {
       curr.selectedNum++;
     }
     curr.selected = curr.units.get(curr.selectedNum);
   }
   else if(keyCode == BACKSPACE){
     for(int r = 0; r < _board._board.length; r++){
       for(int c = 0; c < _board._board[0].length; c++){
         if(_board._board[r][c]._unitG == null){
           if(playanum == 0){
             Unit newUnit = new Infantry(c,r, playanum, curr.units.size());
             curr.units.add(newUnit);
             _board.addUnit(newUnit, c, r);
           }
           else if(playanum == 1){
             Unit newUnit = new Tank(c,r,playanum, curr.units.size());
             curr.units.add(newUnit);
             _board.addUnit(newUnit, c, r);
           } 
           return;
         }
       }
     }
   }
   else if(keyCode == SHIFT){
     if(playanum == players.size() - 1){
       playanum = 0;
     }
     else{
       playanum++;
     }
     curr = players.get(playanum);
   }
   for(int p = 0; p < players.size(); p++){
     if(players.get(p).units.size() == 0){
       break;
     }
     else{
       for(int u = 0; u < players.get(p).units.size(); u++){
         if(players.get(p).units.get(u).dead){
           players.get(p).removeUnit(u);
           System.out.println("true");
         }
       }
     }
   }
}