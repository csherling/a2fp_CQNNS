class Board{ 
   Space[][] _board; //moved into Map
   int xcor;
   int ycor;
   int i = 0;
   boolean flash = true;
   
   Board(int size){
     _board = new Space[size][size];
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             _board[r][c] = new Space();
           }
       }
     
   }
    
   void draw(){
       for(int r = 0; r< _board.length; r++){
           for(int c = 0; c < _board[r].length; c++){
             if(_board[r][c]._unitG != null){
               _board[r][c].draw();
             }
           }
       }
       if (flash) {
         fill(color(255, 255, 255));
         rect(xcor, ycor, 10, 10); 
       }
       if (i == 16) {
        i = 0;
        flash = !flash;
       }
       else i++;
       System.out.println("xcor: "+xcor+" ycor: "+ycor);
   }
   
   void addUnit(Unit u, int r, int c){
     _board[c][r]._unitG = u;
   }
   
  void move(int addx, int addy){
    if(!(xcor + addx < 0 || xcor + addx > (_board[0].length - 1) * 10 || ycor + addy < 0 || ycor + addy > (_board[0].length - 1) * 10)){
      xcor+=addx;
      ycor+=addy;
    }
    else{
      System.out.println("Out of Bounds");
    }
  }

  
}