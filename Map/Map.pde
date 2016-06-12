//Unit sel;
//CLL<Unit> unit;
CLL<Player> players;
Player curr;
int playanum;
//int selNum;
Board _board; //work out space pixel size, how many spaces, rework balance for movement
boolean highlighted;
PFont f;

void setup(){ 

  _board = new Board(30,40);
  size(896 , 640 );
  fill(255,255,255);
  highlighted = false;
  players = new CLL<Player>();
  players.add(new Player(0));
  players.add(new Player(1));
  curr = players.get(0);
  //curr.selected = curr.units.get(0);
  curr.selectedNum = 0;
  for(int i = 0; i < curr.units.size(); i++){
    _board.addUnit(curr.units.get(i), curr.units.get(i).x/16, curr.units.get(i).y/16);
  }
  System.out.println(curr.units.size());

  
  curr = players.get(1);
  //curr.selected = curr.units.get(0);
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
  for(int r = 0; r < _board._board.length; r++){ //EDITED
    for(int c = 0; c < _board._board[r].length; c++){
      if(_board._board[r][c].terrain.building && _board._board[r][c].terrain.pNum < players.size()){
        players.get(_board._board[r][c].terrain.pNum).numB += 1; 
      }
    }
  }
  f = createFont("Arial",16,true); // STEP 2 Create Font
  _board.day = 1;
  curr.addMoney();
}


boolean isGameOver() {
  return noUnits() || noBase();
}

boolean noBase() {
  for(int r = 0; r < _board._board.length; r++){ //EDITED
    for(int c = 0; c < _board._board[r].length; c++){
      if(_board._board[r][c].terrain.base) return true;
    }
  }
  return false;
}

boolean noUnits() {
  for (int i = 0; i < players.size(); i++) {
      if (numUnits(i) == 0 && players.get(i).hasbuilt) return true;
  }
  return false;
}

int numUnits(int p){
  int ret = 0;
  for(int r = 0; r < _board._board.length; r++){ 
    for(int c = 0; c < _board._board[r].length; c++){
      if(_board._board[r][c]._unitG != null && _board._board[r][c]._unitG.pNum == p){
        ret++;
      }
    }
  }
  return ret;
}

void draw(){
  if ( isGameOver() ) {
    System.out.println(":)");
    fill(255,255,255);
    rect(0,0,width, height);
  }
  else {
    
    //System.out.println(numUnits(playanum));
    background(0);
    /*
    for(int i = 0; i < unit.size(); i++){
      unit.get(i).draw(); 
    }
    */
    _board.draw();
    //System.out.println(sel.x + ", " + sel.y);
    if(curr.selectedBuilding != null){
      if(curr.selectedBuilding.ground){
        groundMenu();
      }
      else if(curr.selectedBuilding.air){
        airMenu();
      }
    }
  }
}

void mouseClicked(){
  if (curr.selectedBuilding != null){
    if(curr.selectedBuilding.ground){
      if(_board._board[_board.ycor/16][_board.xcor/16]._unitG == null){ 
        if( mouseX >= 640 && mouseX <=896 && mouseY >=24 && mouseY <=42 && curr.money >= 1000){
          System.out.println("infantry");
          Infantry i = new Infantry(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(i);
          _board.addUnit(i,i.x/16,i.y/16);
          curr.money -= 1000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=49 && mouseY <=67 && curr.money >= 3000){
          System.out.println("mech");
           Mech m = new Mech(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(m);
          _board.addUnit(m,m.x/16,m.y/16);
          curr.money -=3000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=74 && mouseY <=92 && curr.money >= 4000){
          System.out.println("recon");
          Recon r = new Recon(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(r);
          _board.addUnit(r,r.x/16,r.y/16);
          curr.money -=4000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=99 && mouseY <=117 && curr.money >= 5000){
         System.out.println("apcs");
         APC a = new APC(_board.xcor/16, _board.ycor/16, playanum);
         curr.addUnit(a);
         _board.addUnit(a,a.x/16,a.y/16);
         curr.money -=5000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=124 && mouseY <=142 && curr.money >= 6000){
         //System.out.println("artillery");
         // Infantry i = new Infantry(_board.xcor/16, _board.ycor/16, playanum);
         // curr.addUnit(i);
         // _board.addUnit(i,i.x/16,i.y/16);
         //curr.money -=6000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=149 && mouseY <=167 && curr.money >= 7000){
          System.out.println("tank");
          Tank t = new Tank(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(t);
          _board.addUnit(t,t.x/16,t.y/16);
          curr.money -=7000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=174 && mouseY <=192 ){
         System.out.println("aa");
          AA a = new AA(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(a);
          _board.addUnit(a,a.x/16,a.y/16);
         curr.money -=8000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=199 && mouseY <=217 && curr.money >= 16000){
          System.out.println("medtank");
          MedTank m = new MedTank(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(m);
          _board.addUnit(m,m.x/16,m.y/16);
          curr.money -=16000;
        }
      }
    }
    if(curr.selectedBuilding.air){
      System.out.println("hai");
      if(_board._board[_board.ycor/16][_board.xcor/16]._unitG == null){ 
        if( mouseX >= 640 && mouseX <=896 && mouseY >=24 && mouseY <=42 && curr.money >= 5000){
          System.out.println("TCopter");
          TCopter t = new TCopter(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(t);
          _board.addUnit(t,t.x/16,t.y/16);
          curr.money -= 5000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=49 && mouseY <=67 && curr.money >= 9000){
          System.out.println("BCopter");
          BCopter b = new BCopter(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(b);
          _board.addUnit(b,b.x/16,b.y/16);
          curr.money -=9000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=74 && mouseY <=92 && curr.money >= 20000){
          System.out.println("Fighter");
          Fighter f = new Fighter(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(f);
          _board.addUnit(f,f.x/16,f.y/16);
          curr.money -=20000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=99 && mouseY <=117 && curr.money >= 22000){
         System.out.println("Bomber");
         Bomber b = new Bomber(_board.xcor/16, _board.ycor/16, playanum);
         curr.addUnit(b);
         _board.addUnit(b,b.x/16,b.y/16);
         curr.money -=22000;
        }
      }
    }
    else{
      return;
    }
  }      
      
    //if((curr.units.get(i).x + 16 > mouseX && curr.units.get(i).x < mouseX) && (curr.units.get(i).y + 16 > mouseY && curr.units.get(i).y < mouseY)){ 
    //  curr.selected = curr.units.get(i);
    //  curr.selectedNum = i;
    //}
  }

void keyPressed(){
  if (keyCode == UP){
    _board.moveSS(0,-16);
    curr.selectedBuilding = null;    
  }
  else if (keyCode == LEFT){
    _board.moveSS(-16,0);
       curr.selectedBuilding = null;    
  }
  else if (keyCode == DOWN){
    _board.moveSS(0,16);
       curr.selectedBuilding = null;    
  }
  else if (keyCode == RIGHT){
    _board.moveSS(16,0);
       curr.selectedBuilding = null;    
  }
  else if(key == 'x' || key == 'X'){
      if (highlighted == false) {
        if (_board.getUnit() != null) {
            if (playanum == _board.getUnit().pNum) {
              highlighted = true;
              System.out.println("Selected.");
              curr.selected = _board.getUnit();
            }
            else {
              System.out.println("Not your unit.");
            }
          }
        else if(_board.getBuilding() != null){
          if(playanum == _board.getBuilding().pNum){
            highlighted = true;
            System.out.println("Selected.");
            curr.selectedBuilding = _board.getBuilding();
          }
        }
        else System.out.println("No unit to select.");
      }
      else {
        if(_board.moving == true && _board._board[_board.ycor/16][_board.xcor/16].movement > 0){
          if(_board._board[_board.ycor/16][_board.xcor/16]._unitG != null){
            _board._board[curr.selected.y/16][curr.selected.x/16]._unitG = null;
            _board._board[_board.ycor/16][_board.xcor/16]._unitG.transported = curr.selected;
            curr.selected = null;
            highlighted = false;
            System.out.println("Deselected.");
            _board.moving = false;
          }
          else{
            if (_board._board[_board.ycor/16][_board.xcor/16].terrain.building && _board._board[_board.ycor/16][_board.xcor/16].terrain.pNum != playanum) {
                _board._board[_board.ycor/16][_board.xcor/16].terrain.occupied = true;
            }
            if (_board._board[curr.selected.y/16][curr.selected.x/16].terrain.building) {
                _board._board[curr.selected.y/16][curr.selected.x/16].terrain.refreshB();
            }
            _board._board[curr.selected.y/16][curr.selected.x/16]._unitG = null;
            _board._board[_board.ycor/16][_board.xcor/16]._unitG = curr.selected;
            curr.selected.moving(_board,_board.xcor,_board.ycor);
          }
        }
        else if(_board.attacking && _board._board[_board.ycor/16][_board.xcor/16].movement == -1){
          if(_board._board[_board.ycor/16][_board.xcor/16]._unitG != null && _board._board[_board.ycor/16][_board.xcor/16]._unitG.pNum != playanum){
            curr.selected.attack(_board,_board._board[_board.ycor/16][_board.xcor/16]._unitG);
            _board.attacking =false;
          }
          else{
            System.out.println("Can't attack there m8");
          }
        }

        else{
            curr.selected = null;
            curr.selectedBuilding = null;
            highlighted = false;
            System.out.println("Deselected.");
            _board.moving = false;
            _board.attacking = false;
            for(int r = 0; r< _board._board.length; r++){
              for(int c = 0; c < _board._board[r].length; c++){
                _board._board[r][c].movement = 0;
              }
            }
        }
      }
    }
    else if(key == 'u' || key == 'U'){
      if(curr.selected != null){
        if(curr.selected.canTransport && curr.selected.transported != null){
          if((Math.abs(_board.xcor - curr.selected.x) == 16 && _board.ycor == curr.selected.y) || (Math.abs(_board.ycor - curr.selected.y) == 16 && _board.xcor == curr.selected.x)){
            if(_board._board[_board.ycor/16][_board.xcor/16].terrain.footHindrance < 10 && _board._board[_board.ycor/16][_board.xcor/16]._unitG == null){
              curr.selected.transported.x = _board.xcor;
              curr.selected.transported.y = _board.ycor;
              curr.selected.transported.moved = true;
              curr.selected.moved = true;
              _board._board[_board.ycor/16][_board.xcor/16]._unitG = curr.selected.transported;
              curr.selected.transported = null;
            }
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
       if (highlighted) {
         curr.selectedBuilding = null; 
         curr.selected = null;
         highlighted = false;
         System.out.println("Deselected."); 
       }
     
       _board.moving = false;
     for(int r = 0; r< _board._board.length; r++){
       for(int c = 0; c < _board._board[r].length; c++){
         _board._board[r][c].movement = 0;
       }
     }
     
     curr = players.get(playanum);
     for(int i = 0; i < curr.units.size(); i++){
       curr.units.get(i).moved = false;
     }
     for(int i = 0; i < curr.units.size(); i++){
       curr.units.get(i).attacked = false;
     }
     System.out.println("Day: " + _board.getDay());
     System.out.println("Current Player: Player #" + playanum); //EDITED
     System.out.println("PLayer holds " + curr.numB + " buildings.\n");
     _board.day += 1.0 / players.size();
     if (_board.day % 1.0 == 0.0) {
       for(int r = 0; r< _board._board.length; r++){
         for(int c = 0; c < _board._board[r].length; c++){
           if(_board._board[r][c].terrain.occupied) { //if terrain has a unit capturing it
             Terrain terr = _board._board[r][c].terrain; //to make easier to read
             int oldpNum = terr.pNum; //retains old pNum just in case we need it
             if (terr.capture(_board)) { //true if captured, false if not
               if (oldpNum < players.size()) { //if captured check if terrain belonged to a player
                 players.get(oldpNum).numB--;  //old player gets less money
               }
               players.get(terr.pNum).numB++;//new player gets more money
             }
           }
         }
       }
     }
     curr.addMoney();
   }
            
      
  
  if(curr.selected != null){
    if(curr.selected.attacked == false){
        if(key == 'm' && ! _board.attacking) {
          if (curr.selected.moved == false) {
            if (! _board.moving) {
             //System.out.println("up");
             //_board.move(curr.selected, 0, -16);
             curr.selected.moves(_board, curr.selected.x, curr.selected.y, curr.selected.mvType, curr.selected.movement, 0);
             _board.moving = true;
            }
            else {
              _board.moving = false;
              for(int r = 0; r< _board._board.length; r++){
               for(int c = 0; c < _board._board[r].length; c++){
                 _board._board[r][c].movement = 0;
               }
              }
            }
          }
          else {
            System.out.println("Already moved.");  
          }
        }
        
        if(key == 'a' && ! _board.moving) {
          if (! _board.attacking) {
            if (curr.selected.y != 0) {
               _board._board[curr.selected.y/16 - 1][curr.selected.x/16].movement = -1; 
            }
            if (curr.selected.y != (_board._board[0].length - 1) * 16 ) {
               _board._board[curr.selected.y/16 + 1][curr.selected.x/16].movement = -1; 
            }
            if (curr.selected.x != 0) {
               _board._board[curr.selected.y/16][curr.selected.x/16 - 1].movement = -1; 
            }
            if (curr.selected.x != (_board._board[0].length - 1) * 16 ) {
               _board._board[curr.selected.y/16][curr.selected.x/16 + 1].movement = -1; 
            }
            _board.attacking = true;
          }
          else {
            _board.attacking = false;
            for(int r = 0; r< _board._board.length; r++){
               for(int c = 0; c < _board._board[r].length; c++){
                 _board._board[r][c].movement = 0;
               }
            }
          }
        }
    
      //else if (key == 'w' || key == 'W') {
      //    if (curr.selected.y != 0 && _board._board[(curr.selected.y - 16)/16][curr.selected.x/16]._unitG != null) {
      //    //Player opponent = players.get(_board._board[(curr.selected.y - 16)/16][curr.selected.x/16]._unitG.pNum);
      //      curr.selected.attack(_board, _board._board[ (curr.selected.y - 16)/16][curr.selected.x/16]._unitG);
      //    }
      //    else System.out.println("No unit to attack.");
      //}
      //else if (key == 'a' || key == 'A') {
      //  if (curr.selected.x != 0 && _board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG != null) {
      //    //Player opponent = players.get(_board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG.pNum);
      //    curr.selected.attack(_board, _board._board[curr.selected.y/16][(curr.selected.x - 16)/16]._unitG);
      //  }
      //  else System.out.println("No unit to attack.");
      //}
      //else if (key == 's' || key == 'S') {
      //  if (curr.selected.y != (_board._board.length - 1) * 16 && _board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG != null) {
      //    //Player opponent = players.get(_board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG.pNum);
      //    curr.selected.attack(_board, _board._board[(curr.selected.y + 16)/16][curr.selected.x/16]._unitG);
      //  }
      //  else System.out.println("No unit to attack.");
      //}  
      //else if (key == 'd' || key == 'D') {
      //  if (curr.selected.x != (_board._board[0].length - 1) * 16 && _board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG != null) {
      //    //Player opponent = players.get(_board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG.pNum);
      //    curr.selected.attack(_board, _board._board[curr.selected.y/16][(curr.selected.x + 16)/16]._unitG);
      //  }
      //  else System.out.println("No unit to attack.");
      //}
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
    //if(keyCode == ENTER){
  //  curr.cycle();
  //}
  //for(int p = 0; p < players.size(); p++){
  //  if(players.get(p).units.size() == 0){
  //    break;
  //  }
  //  else{
  //    for(int u = 0; u < players.get(p).units.size(); u++){
  //      if(players.get(p).units.get(u).dead){
  //        System.out.println("Before: "+ players.get(p).units);
          
  //        players.get(p).removeUnit(_board, u); //remove
          
  //        System.out.println("After: "+players.get(p).units);
          
  //        System.out.println(curr.units.size());
  //        System.out.println("true");
  //      }
  //    }
  //   }
  //  } 
}

void groundMenu(){
    fill(210, 180, 140);
    rect(640, 0,256, 256);
    fill(50, 205, 50);
    rect(640, 24, 256, 18);
    rect(640, 49, 256, 18);
    rect(640, 74, 256, 18);
    rect(640, 99, 256, 18);
    rect(640, 124, 256, 18);
    rect(640, 149, 256, 18);
    rect(640, 174, 256, 18);
    rect(640, 199, 256, 18);
    textFont(f, 20);                  
    fill(0);               
    text("Ground Units ", 642, 18);
    textFont(f, 16);
    text("      $"+ curr.money, 800,18); 
    textFont(f, 16);
    text("Infantry: $1,000",642, 40);
    text("Mech: $3,000", 642, 65);
    text("Recon: $4,000", 642, 90);
    text("APC's: $5,000", 642, 115);
    text("Artillery: $6,000", 642, 140);
    text("Tank: $7,000", 642, 165);
    text("Anti-Air: $8,000", 642, 190);
    text("Medium Tank: $16,000", 642, 215);
    //text("Missiles: $12,000", 642, 240);
    //text("Rockets: $15,000", 642 , 265);
}

void airMenu(){
  //if(t.ground){
    fill(255, 255, 255);
    rect(640, 0,256, 256);
    fill(255, 0, 255);
    rect(640, 24, 256, 18);
    rect(640, 49, 256, 18);
    rect(640, 74, 256, 18);
    rect(640, 99, 256, 18);
    textFont(f, 20);                  
    fill(0);               
    text("Air Units",642,18); 
        textFont(f, 16);
    text("      $"+ curr.money, 800,18); 
    textFont(f, 16);
    text("T-Copter: $5,000",642, 40);
    text("B-Copter: $9,000", 642, 65);
    text("Fighter: $20,000", 642, 90);
    text("Bomber: $22,000", 642, 115);
//}
}