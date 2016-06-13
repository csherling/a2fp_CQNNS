//Unit sel;
//CLL<Unit> unit;
CLL<Player> players;
Player curr;
int playanum;
//int selNum;
Board _board; //work out space pixel size, how many spaces, rework balance for movement
boolean highlighted;
PFont f;
boolean startscreen;
boolean about;
boolean info;

boolean mapsel;
int mapNum;
PImage map1;
PImage map2;
PImage map3;
PImage map4;
PImage map5;
PImage map6;
PImage map7;
PImage map8;
PImage map9;
PImage map10;
PImage map11;
PImage map12; 



PImage screen;
PImage endscreen;

void setup(){ 

  size(896 , 640 );
  startscreen = true;
  about =false;
  info = false;
  mapsel = false;
  mapNum = 1;
  screen = loadImage("Draft.png");
  endscreen = loadImage("endscreen.jpg");
  endscreen.resize(896,640);
  
  map1 = loadImage("map1.png"); 
  map2 = loadImage("map2.png");
  map3 = loadImage("map3.png");
  map4 = loadImage("map4.png");
  map5 = loadImage("map5.png");
  map6 = loadImage("map6.png");
  map7 = loadImage("map7.png");
  map8 = loadImage("map8.png");
  map9 = loadImage("map9.png");
  map10 = loadImage("map10.png");
  map11 = loadImage("map11.png");
  map12 = loadImage("map12.png");
  
  

}


boolean isGameOver() {
  return noUnits() || (noBase() != -1);
}

int noBase() {
  for(int r = 0; r < _board._board.length; r++){ //EDITED
    for(int c = 0; c < _board._board[r].length; c++){
      if(_board._board[r][c].terrain.base) return _board._board[r][c].terrain.pNum % 2;
    }
  }
  return -1;
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

int getWinner() {
  if (numUnits(0) == 0) return 1;
  if (numUnits(1) == 0) return 0;
  return noBase();
}


void draw(){
  if (startscreen){
    image(screen, 0,0); 
  }
  else if (mapsel) { 
     if (mapNum == 1) image(map1, 0, 0); 
     else if (mapNum == 2) image(map2, 0, 0);
     else if (mapNum == 3) image(map3, 0, 0);
     else if (mapNum == 4) image(map4, 0, 0);
     else if (mapNum == 5) image(map5, 0, 0);
     else if (mapNum == 6) image(map6, 0, 0);
     else if (mapNum == 7) image(map7, 0, 0);
     else if (mapNum == 8) image(map8, 0, 0);
     else if (mapNum == 9) image(map9, 0, 0);
     else if (mapNum == 10) image(map10, 0, 0);
     else if (mapNum == 11) image(map11, 0, 0);
     else if (mapNum == 12) image(map12, 0, 0);
  }
  else if(about){
    fill(255,255,255);
    rect(0,0,width,height);
    textFont(f, 20); 
    fill(0);
    text("About:",0,20);
    textFont(f, 16);
    text("About the game:",0,50);
    textFont(f, 12);
    text("Less Advanced Wars TBS is a turn-based strategy game in which two players compete to eliminate the other's units or capture the other's headquarters.",20,70);
    textFont(f, 16);
    text("Gameplay:",0,100);
    textFont(f, 12);
    text("Each turn, players get money based on how many buildings they own in order to build units. ",20,120);
    textFont(f, 14);
    text("Units:",20,140);
    textFont(f, 12);
    text("There are three main types of units: Ground, air, and water. Units are can move and attack, and are used to destroy enemy units, or capture buildings. Units may",40,160);
    text("move and attack once per turn, but must move before they attack. Only a single unit may occupy a given space, but units are allowed to pass through friendly units. ",20,172);
    text("In special cases,units may 'load into' other units for transport and then unload to attack. Units may not attack or move on the turn they are built.",20,184);
    textFont(f, 14);
    text("Buildings:",20,204);
    textFont(f, 12);
    text("There are four types of buildings: Headquarters, bases, airports, seaports, and cities.",40,224);
    text("Headquarters: The main objective of the game -must be protected at all costs. Each player has only one, and when it is captured, the game ends.",20,236);
    text("Base: Used to build ground units.",20,248);
    text("Airports: Used to build air units.",20,260);
    text("Seaports: Used to build sea units.",20,272);
    text("Cities: Can be captured for additional income.",20,284);
    text("As players take turns, they can capture more airports, bases, and seaports to increase their building capacity, and capture more cities to increase their income.", 20, 304);
    text("Eventually if a player becomes strong enough, he can move towards the enemy territory to end the game by destroying all enemy units, or capturing the headquarters.",20,316);
    textFont(f,16);
    text("About the project:",0,346);
    textFont(f,12);
    text("This is the APCS2 final project of Team CQNNS (Chris Sher, Nick Ng, and Kevin 'Q' Hwang). This project incorporates data structures and algorithms learned this",20,366);
    text("term such as circularly linked lists for storing units and pathfinding algorithms for determining where a unit may move. We hope that enjoy our game and memes.",20,378);
    
  }
  else if(info){
    fill(255,255,255);
    rect(0,0,width,height);
    textFont(f, 20);  
    text("Insert Text Here ", 0,0);
  }
  
  else{
   if ( isGameOver() ) {
      System.out.println(":)");
      image(endscreen, 0, 0);
      textFont(f, 30);  
      fill(0, 0, 255);
      text("Player " + (getWinner() + 1) + " has won!!" , 360,100);
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
        else if(curr.selectedBuilding.sea){
          seaMenu();
        }
      }
      if(_board._board[_board.ycor/16][_board.xcor/16]._unitG != null){
        unitInfo();
      }
      terrainInfo();
      if(curr.selected != null){
        textFont(f, 20);                  
        fill(0);               
        text("Selected",642,274+100); 
      }
      else if(curr.selectedBuilding != null){
        textFont(f, 20);                  
        fill(0);               
        text("Selected",642,274+128+100); 
      }
      else{
        textFont(f, 20);                  
        fill(0);               
        text("Deselected",642,274+100);   
        text("Deselected",642,274+128+100);   
      }
    }
  }
}

void mouseClicked(){
  System.out.println(mouseX);
  System.out.println(mouseY);
  if(startscreen){
    if( mouseX >= 100 && mouseX <=305 && mouseY >=530 && mouseY <=583){
      startscreen = false;
      mapsel = true;
    }
    else if(mouseX >= 365 && mouseX <=483 && mouseY >=530 && mouseY <=583){
      startscreen = false;
      about = true;
    }
    else if(mouseX >= 540 && mouseX <= 761 && mouseY >= 530 && mouseY <= 583){
      startscreen = false;
      info = true;
    }
  }
  else if(mapsel) {
    if (mouseX >= 90 && mouseX <= 270 && mouseY >= 510 && mouseY <= 560)
    {
      if(mapNum == 11) mapNum = 0;
      else mapNum++;
    }
    if(mouseX >= 690 && mouseX <= 790 && mouseY >= 510 && mouseY <= 560){
      if(mapNum == 11) mapNum = 11;
      else mapNum--;
    }
    if(mouseX >= 270 && mouseX <= 640 && mouseY >= 40 && mouseY <= 370){
      _board = new Board(mapNum);  
      fill(255,255,255);
      highlighted = false;
      players = new CLL<Player>();
      players.add(new Player(0));
      players.add(new Player(1));
      curr = players.get(0);
      curr.selectedNum = 0;
      playanum = 0;
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
      mapsel = false;
    }
  }
  else if(about){
    
  }
  else if(info){
  
  }
  else if (curr.selectedBuilding != null){
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
         System.out.println("artillery");
          Artillery a= new Artillery(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(a);
          _board.addUnit(a,a.x/16,a.y/16);
         curr.money -=6000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=149 && mouseY <=167 && curr.money >= 7000){
          System.out.println("tank");
          Tank t = new Tank(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(t);
          _board.addUnit(t,t.x/16,t.y/16);
          curr.money -=7000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=174 && mouseY <=192 && curr.money >= 8000){
         System.out.println("aa");
          AA a = new AA(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(a);
          _board.addUnit(a,a.x/16,a.y/16);
         curr.money -=8000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=199 && mouseY <=217 && curr.money >= 12000){
          System.out.println("Missiles");
          Missile m = new Missile(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(m);
          _board.addUnit(m,m.x/16,m.y/16);
          curr.money -=12000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=224 && mouseY <=217+25 && curr.money >= 15000){
          System.out.println("Rocket");
          Rocket r= new Rocket(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(r);
          _board.addUnit(r,r.x/16,r.y/16);
          curr.money -=15000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=199+50 && mouseY <=217+50 && curr.money >= 16000){
          System.out.println("medtank");
          MedTank m = new MedTank(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(m);
          _board.addUnit(m,m.x/16,m.y/16);
          curr.money -=16000;
        }
      }
    }
    else if(curr.selectedBuilding.air){
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
    else if(curr.selectedBuilding.sea){
      System.out.println("hai");
      if(_board._board[_board.ycor/16][_board.xcor/16]._unitG == null){ 
        if( mouseX >= 640 && mouseX <=896 && mouseY >=24 && mouseY <=42 && curr.money >= 12000){
          System.out.println("Lander");
          Lander l = new Lander(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(l);
          _board.addUnit(l,l.x/16,l.y/16);
          curr.money -= 12000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=49 && mouseY <=67 && curr.money >= 18000){
          System.out.println("Cruiser");
          Cruiser c = new Cruiser(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(c);
          _board.addUnit(c,c.x/16,c.y/16);
          curr.money -=18000;
        }
        else if( mouseX >= 640 && mouseX <=896 && mouseY >=74 && mouseY <=92 && curr.money >= 28000){
          System.out.println("Battleship");
          Battleship b = new Battleship(_board.xcor/16, _board.ycor/16, playanum);
          curr.addUnit(b);
          _board.addUnit(b,b.x/16,b.y/16);
          curr.money -=28000;
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
            if(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported == null){
              _board._board[_board.ycor/16][_board.xcor/16]._unitG.transported = curr.selected;
            }
            else if(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported2 == null){
              _board._board[_board.ycor/16][_board.xcor/16]._unitG.transported2 = curr.selected;
            }
            curr.selected = null;
            highlighted = false;
            System.out.println("Deselected.");
            _board.moving = false;
            for(int r = 0; r< _board._board.length; r++){
              for(int c = 0; c < _board._board[r].length; c++){
                _board._board[r][c].movement = 0;
              }
            }
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
            _board.moving = false;
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
    else if(key == 'i' || key == 'I'){
      if(curr.selected != null){
        if(curr.selected.canTransport && curr.selected.transported2 != null){
          if((Math.abs(_board.xcor - curr.selected.x) == 16 && _board.ycor == curr.selected.y) || (Math.abs(_board.ycor - curr.selected.y) == 16 && _board.xcor == curr.selected.x)){
            if(_board._board[_board.ycor/16][_board.xcor/16].terrain.footHindrance < 10 && _board._board[_board.ycor/16][_board.xcor/16]._unitG == null){
              curr.selected.transported2.x = _board.xcor;
              curr.selected.transported2.y = _board.ycor;
              curr.selected.transported.moved = true;
              curr.selected.moved = true;
              _board._board[_board.ycor/16][_board.xcor/16]._unitG = curr.selected.transported2;
              curr.selected.transported2 = null;
            }
          }
        }
      }
    }
    else if(keyCode == ENTER){
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
            if (! curr.selected.range) {
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
              curr.selected.rangeAttack(_board, curr.selected.x, curr.selected.y, 0);
              curr.selected.checkSpaces(_board);
              _board.attacking = true;
            }
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
    rect(640, 224, 256, 18);
    rect(640, 249, 256, 18);
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
    text("Missiles: $12,000", 642, 215);
    text("Rockets: $15,000", 642 , 240);
    text("Medium Tank: $16,000", 642, 265);


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

void seaMenu(){
  //if(t.ground){
    fill(200, 200, 200);
    rect(640, 0,256, 256);
    fill(155, 0, 155);
    rect(640, 24, 256, 18);
    rect(640, 49, 256, 18);
    rect(640, 74, 256, 18);
    textFont(f, 20);                  
    fill(0);               
    text("Sea Units",642,18); 
        textFont(f, 16);
    text("      $"+ curr.money, 800,18); 
    textFont(f, 16);
    text("Lander: $12,000",642, 40);
    text("Cruiser: $18,000", 642, 65);
    text("Battleship: $28,000", 642, 90);
//}
}


boolean p1turn(){
  return playanum ==0;
}
void unitInfo(){
  //if(t.ground){
    fill(200);
    rect(640, 356,256, 128);
    //textFont(f, 20);                  
    fill(0);               
    //text("Selected",642,18);
        if (p1turn()){
      fill(255,0,0);
    }
    else{
      fill(0,0,255);
    }
    textFont(f, 16);
    image(_board._board[_board.ycor/16][_board.xcor/16]._unitG.img, 800,374);
    if(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported != null){
      image(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported.img, 768,374);      
    }
    if(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported2 != null){
      image(_board._board[_board.ycor/16][_board.xcor/16]._unitG.transported2.img, 784,374);      
    }    
    text("HP: " + _board._board[_board.ycor/16][_board.xcor/16]._unitG.health,642, 396);
    text("Movement: " + _board._board[_board.ycor/16][_board.xcor/16]._unitG.movement, 642, 421);
    text("UnitType: " + _board._board[_board.ycor/16][_board.xcor/16]._unitG.uType, 642, 446);
    text("DriveType: " + _board._board[_board.ycor/16][_board.xcor/16]._unitG.mvType, 642, 471);    
    //text("Bomber: ", 642, 115);
//}
}

void terrainInfo(){
  //if(t.ground){
    fill(200);
    rect(640, 256+128+100,256, 128);
    //textFont(f, 20);                  
    fill(0);
        if (p1turn()){
      fill(255,0,0);
    }
    else{
      fill(0,0,255);
    }
    //text("Selected",642,18); 
    textFont(f, 16);
    image(_board._board[_board.ycor/16][_board.xcor/16].terrain.img, 800,274+128+100); 
    text("Defense: " + _board._board[_board.ycor/16][_board.xcor/16].terrain.defense, 642,274+128+100+25); 
    text("Foot Hindrance: " + _board._board[_board.ycor/16][_board.xcor/16].terrain.footHindrance,642,296+128+25+100);
    text("Wheel Hindrance: " + _board._board[_board.ycor/16][_board.xcor/16].terrain.wheelHindrance, 642, 321+128+25+100);
    text("Tread Hindrance: " + _board._board[_board.ycor/16][_board.xcor/16].terrain.treadHindrance, 642, 346+128+25+100);
    //text("Air Hindrance: " + _board._board[_board.ycor/16][_board.xcor/16].terrain.airHindrance, 642, 371+128+25);
//}
}