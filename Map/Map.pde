//Unit sel;
//CLL<Unit> unit;
CLL<Player> players;
Player curr;
int playanum;
//int selNum;
Board _board; //work out space pixel size, how many spaces, rework balance for movement

void setup(){ 
  size(640, 480);
  fill(255,255,255);
  _board = new Board(30,40);
  players = new CLL<Player>();
  players.add(new Player(0));
  players.add(new Player(1));
  curr = players.get(0);
  curr.addUnit(new Infantry(10, 13, 0));  
  curr.addUnit(new Tank(7, 10, 0));
  curr.addUnit(new Infantry(4, 13, 0));  
  curr.selected = curr.units.get(0);
  curr.selectedNum = 0;
  for(int i = 0; i < curr.units.size(); i++){
    _board.addUnit(curr.units.get(i), curr.units.get(i).x/16, curr.units.get(i).y/16);
  }
  System.out.println(curr.units.size());

  
  curr = players.get(1);
  curr.addUnit(new Infantry(10, 14, 1));  
  curr.addUnit(new Tank(12, 7, 1));
  curr.addUnit(new Infantry(14, 14, 1));  
  curr.addUnit(new Infantry(7, 5, 1));  
  curr.selected = curr.units.get(0);
  curr.selectedNum = 0;
  for(int i = 0; i < curr.units.size(); i++){
    _board.addUnit(curr.units.get(i), curr.units.get(i).x/16, curr.units.get(i).y/16);
  }
  System.out.println(curr.units.size());

  curr = players.get(0);
  playanum = 0;
  for(int i = 0; i < curr.units.size(); i++){
    curr.units.get(i).moved = false;
  }
  for(int i = 0; i < curr.units.size(); i++){
    curr.units.get(i).attacked = false;
  }
  for(int i = 0; i < curr.units.size(); i++){
    curr.units.get(i).moveLeft = curr.units.get(i).movement;
  }
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
    if((curr.units.get(i).x + 16 > mouseX && curr.units.get(i).x < mouseX) && (curr.units.get(i).y + 16 > mouseY && curr.units.get(i).y < mouseY)){ 
      curr.selected = curr.units.get(i);
      curr.selectedNum = i;
    }
  }
}

void keyPressed(){
  if (key == 't' || key == 'T'){
    _board.moveSS(0,-16);
  }
   else if (key == 'f' || key == 'F'){
    _board.moveSS(-16,0);
  }
   else if (key == 'g' || key == 'G'){
    _board.moveSS(0,16);
  }
   else if (key == 'h' || key == 'H'){
    _board.moveSS(16,0);
  }
  if(curr.selected != null){
    if(curr.selected.attacked == false){
        if(keyCode == UP && curr.selected.moved == false){
          System.out.println("up");
         _board.move(curr.selected, 0, -16);
        }
        else if(keyCode == DOWN && curr.selected.moved == false){
          System.out.println("down");
          _board.move(curr.selected, 0, 16);
        }
        else if(keyCode == LEFT && curr.selected.moved == false){
          System.out.println("left");
          _board.move(curr.selected, -16, 0);
        }
        else if(keyCode == RIGHT && curr.selected.moved == false){
          System.out.println("right");
          _board.move(curr.selected, 16, 0);
        }
      else if (key == 'w' || key == 'W') {
          if (curr.selected.y != 0 && _board._board[(curr.selected.y - 16)/16][curr.selected.x/16]._unitG != null) {
          //Player opponent = players.get(_board._board[(curr.selected.y - 16)/16][curr.selected.x/16]._unitG.pNum);
            curr.selected.attack(_board, _board._board[ (curr.selected.y - 16)/16][curr.selected.x/16]._unitG);
          }
          else System.out.println("No unit to attack.");
      }
      else if (key == 'a' || key == 'A') {
        if (curr.selected.x != 0 && _board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG != null) {
          //Player opponent = players.get(_board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG.pNum);
          curr.selected.attack(_board, _board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG);
        }
        else System.out.println("No unit to attack.");
      }
      else if (key == 's' || key == 'S') {
        if (curr.selected.y != (_board._board.length - 1) * 16 && _board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG != null) {
          //Player opponent = players.get(_board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG.pNum);
          curr.selected.attack(_board, _board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG);
        }
        else System.out.println("No unit to attack.");
      }  
      else if (key == 'd' || key == 'D') {
        if (curr.selected.x != (_board._board[0].length - 1) * 16 && _board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG != null) {
          //Player opponent = players.get(_board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG.pNum);
          curr.selected.attack(_board, _board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG);
        }
        else System.out.println("No unit to attack.");
      }
   }
  
  if(keyCode == ENTER){
    curr.cycle();
  }
  for(int p = 0; p < players.size(); p++){
    if(players.get(p).units.size() == 0){
      break;
    }
    else{
      for(int u = 0; u < players.get(p).units.size(); u++){
        if(players.get(p).units.get(u).dead){
          System.out.println("Before: "+ players.get(p).units);
          
          players.get(p).removeUnit(_board, u); //remove
          
          System.out.println("After: "+players.get(p).units);
          
          System.out.println(curr.units.size());
          System.out.println("true");
        }
      }
     }
    }     
  
   
    if(keyCode == BACKSPACE){
      for(int r = 0; r < _board._board.length; r++){
        for(int c = 0; c < _board._board[0].length; c++){
          if(_board._board[r][c]._unitG == null){
            if(playanum == 0){
              Unit newUnit = new Infantry(c,r, playanum);
              curr.units.add(newUnit);
              _board.addUnit(newUnit, c, r);
            }
            else if(playanum == 1){
              Unit newUnit = new Tank(c,r,playanum);
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
     for(int i = 0; i < curr.units.size(); i++){
       curr.units.get(i).moved = false;
     }
     for(int i = 0; i < curr.units.size(); i++){
       curr.units.get(i).attacked = false;
     }
     for(int i = 0; i < curr.units.size(); i++){
       curr.units.get(i).moveLeft = curr.units.get(i).movement;
     }
   }
   if(curr.selected == null){
     if(curr.units.size() == 0){
       System.out.println("No units");
     }
     else{
       System.out.println("Resetting units");
       curr.selected = curr.units.get(0);
       curr.selectedNum = 0;
     }
   }
  }
}