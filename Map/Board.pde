class Board{ 
   Space[][] _board; //moved into Map
   int xcor;
   int ycor;
   int i = 0;
   boolean flash = true; 
   boolean moving = false;
   PImage redX = loadImage("red.png");
   
   Board(int rsize, int csize){
     //_board = new Space[rsize][csize];
     //  for(int r = 0; r< _board.length; r++){
     //      for(int c = 0; c < _board[r].length; c++){
     //        _board[r][c] = new Space();
     //      }
     //  }
     MapMaker map = new MapMaker(2);
     _board = map._board;
       //for(int r = 0; r< _board.length; r++){
       //    for(int c = 0; c < _board[r].length; c++){
       //      _board[r][c].terrain = new Mountains(c, r);
       //    }
       //}
   }
   Unit getUnit(){
     return _board[ycor/16][xcor/16]._unitG;
   }
   void draw(){
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c].draw();
             if (moving) {
                 if (_board[r][c].movement > 0) {
                     image(redX, c*16, r*16);
                 }
             }
           }
       }
        if (flash) {
  
         image(loadImage("cursor.png"), xcor , ycor); 
       }
       if (i == 16) {
        i = 0;
        flash = !flash;
       }
       else i++;
   }
   
   void addUnit(Unit u, int r, int c){
     _board[c][r]._unitG = u;
   }
   
  void move(Unit u, int addx, int addy){
    if(u != null){
      if(!(u.x + addx < 0 || u.x + addx > (_board[0].length - 1) * 16 || u.y + addy < 0 || u.y + addy > (_board.length - 1) * 16)){
        if(_board[(u.y + addy ) / 16][(u.x + addx) / 16]._unitG == null){
          System.out.println("hii");
          if(u.moveLeft > 0){
            _board[u.y / 16][u.x / 16]._unitG = null;
            //System.out.println("ux uy: " + u.x + " , " + u.y );
            //System.out.println("addx addy: " + addx + " , " + addy );
            _board[(u.y + addy ) / 16][(u.x + addx) / 16]._unitG = u;
            u.move(addx, addy);
          }
        //System.out.println("ux uy: " + u.x + " , " + u.y ); 
        }
      }
      else{
        System.out.println("Out of Bounds");
      }
    }
    else{
      System.out.println("Please cycle");
    }
  }
  
  void moveSS(int addx, int addy){
    if(!(xcor + addx < 0 || xcor + addx > (_board[0].length - 1) * 16 || ycor + addy < 0 || ycor + addy > (_board.length - 1) * 16)){
      xcor+=addx;
      ycor+=addy;
    }
    else{
      System.out.println("Out of Bounds");
    }
  }

  
}