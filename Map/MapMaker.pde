class MapMaker{
  
  Space[][] _board;
  
  MapMaker(int map){
    if(map == 0){
      BeanIsland();
    }
  }
  
  void BeanIsland(){
    _board = new Space[15][16];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }

    tGen("o o o o o o o o o o o o o o o o ", 0, 16);
    tGen("o o o o o p p o o o p m o o o o ", 1, 16);
    tGen("o o p p m f f f f f f m m p o o ", 2, 16);
    tGen("o p p m m p p p p p p m m p p o ", 3, 16);
    tGen("o crcrm m cncncncncncnm m cbcbo ", 4, 16);
    tGen("o p p p m r r r r r r m p p p o ", 5, 16);
    tGen("o brp brm r p m m p r m bbp bbo ", 6, 16);
    tGen("o hrbrr m r crm m cbr m r bbhbo ", 7, 16);
    tGen("o brf r m r p m m p r m r f bbo ", 8, 16);
    tGen("o p p r r r crm m cbr r r p p o ", 9, 16);
    tGen("o crcrp f f m m m m f f f cbcbo ", 10, 16);
    tGen("o o o p p p p p o p p p m p o o ", 11, 16);
    tGen("o o o o p p o o o o o p o o o o ", 12, 16);
    tGen("o o o o o o o o o o o o o o o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }
  
  
  void tGen(String terr, int row, int len){
    for(int i = 0; i < len; i++){
      String s = terr.substring(2*i, 2*i + 2);
      if(s.equals("r ")){
        _board[row][i].terrain = new Road(i, row);
      }
      else if(s.equals("p ")){
        _board[row][i].terrain = new Plains(i, row);
      }
      else if(s.equals("f ")){
        _board[row][i].terrain = new Forest(i, row);
      }
      else if(s.equals("m ")){
        _board[row][i].terrain = new Mountains(i, row);
      }
      else if(s.equals("o ")){
        _board[row][i].terrain = new Ocean(i, row);
      }
      else if(s.substring(0, 1).equals("h")){
        if(s.substring(1, 2).equals("r")) _board[row][i].terrain = new HQ(i, row);
        if(s.substring(1, 2).equals("b")) _board[row][i].terrain = new HQ(i, row);
        if(s.substring(1, 2).equals("g")) _board[row][i].terrain = new HQ(i, row);
        if(s.substring(1, 2).equals("y")) _board[row][i].terrain = new HQ(i, row);
        if(s.substring(1, 2).equals("n")) _board[row][i].terrain = new HQ(i, row);
      }
      else if(s.substring(0, 1).equals("c")){
        if(s.substring(1, 2).equals("r")) _board[row][i].terrain = new City(i, row);
        if(s.substring(1, 2).equals("b")) _board[row][i].terrain = new City(i, row);
        if(s.substring(1, 2).equals("g")) _board[row][i].terrain = new City(i, row);
        if(s.substring(1, 2).equals("y")) _board[row][i].terrain = new City(i, row);
        if(s.substring(1, 2).equals("n")) _board[row][i].terrain = new City(i, row);
      }
      else if(s.substring(0, 1).equals("b")){
        if(s.substring(1, 2).equals("r")) _board[row][i].terrain = new Base(i, row);
        if(s.substring(1, 2).equals("b")) _board[row][i].terrain = new Base(i, row);
        if(s.substring(1, 2).equals("g")) _board[row][i].terrain = new Base(i, row);
        if(s.substring(1, 2).equals("y")) _board[row][i].terrain = new Base(i, row);
        if(s.substring(1, 2).equals("n")) _board[row][i].terrain = new Base(i, row);
      }
      else if(s.substring(0, 1).equals("a")){
        if(s.substring(1, 2).equals("r")) _board[row][i].terrain = new Airport(i, row);
        if(s.substring(1, 2).equals("b")) _board[row][i].terrain = new Airport(i, row);
        if(s.substring(1, 2).equals("g")) _board[row][i].terrain = new Airport(i, row);
        if(s.substring(1, 2).equals("y")) _board[row][i].terrain = new Airport(i, row);
        if(s.substring(1, 2).equals("n")) _board[row][i].terrain = new Airport(i, row);
      }
      else{
        int x = i;
        System.out.println("Typo: " + row + " " + x);
      }
    }
  }
  
}