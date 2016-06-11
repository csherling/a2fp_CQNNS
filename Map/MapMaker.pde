class MapMaker{
  
  Space[][] _board;
  
  MapMaker(int map){
    if(map == 0){
      beanIsland();
    }
    else if(map == 1){
      craterIsle();
    }
    else if(map == 2){
      coralLagoon();
    }
    else if(map == 3){
      fistPeninsula();
    }
    else if(map == 4){
      littleIsland();
    }
    else if(map == 5){
      sabreRange();
    }
  }
  
  void beanIsland(){
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
    tGen("o p p p m r0rhrhrhrhr1m p p p o ", 5, 16);
    tGen("o brp brm rvp m m p rvm bbp bbo ", 6, 16);
    tGen("o hrbrrvm rvcrm m cbrvm rvbbhbo ", 7, 16);
    tGen("o brf rvm rvp m m p rvm rvf bbo ", 8, 16);
    tGen("o p p r3rhr2crm m cbr3rhr2p p o ", 9, 16);
    tGen("o crcrp f f m m m m f f f cbcbo ", 10, 16);
    tGen("o o o p p p p p o p p p m p o o ", 11, 16);
    tGen("o o o o p p o o o o o p o o o o ", 12, 16);
    tGen("o o o o o o o o o o o o o o o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }

  void craterIsle(){
    _board = new Space[15][16];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("o o o o o o o o o o o o o o o o ", 0, 16);
    tGen("o o o o o o p p p p p p o o o o ", 1, 16);
    tGen("o o o o brhrbrrhcrcrcrcnp p o o ", 2, 16);
    tGen("o o p p rvbrp p p p p f f f f o ", 3, 16);
    tGen("o p crbrrvp p p crcnf f f f p o ", 4, 16);
    tGen("o p p r0r2crp o p f f f f f cno ", 5, 16);
    tGen("o p p rvp p o o p o o p f f f o ", 6, 16);
    tGen("o m p rvm o o o o o o cnf f p o ", 7, 16);
    tGen("o p r0r2p o o o o o o f f f cno ", 8, 16);
    tGen("o cnrvp cno o p p o p f f f f o ", 9, 16);
    tGen("o p rvm p p p cnp p p p p p p o ", 10, 16);
    tGen("o cnr3rhr1m p p cnp p bnp bncno ", 11, 16);
    tGen("o o p p r3rhr1p p bnp bbp p o o ", 12, 16);
    tGen("o o o cnp p r3rhcnp bbhbbbo o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }

  void coralLagoon(){
    _board = new Space[15][16];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("o o o o o o o o m m m o o o o o ", 0, 16);
    tGen("o o o o o p p p p p p p o o o o ", 1, 16);
    tGen("o o o r0rhcncncncncncncnr1p o o ", 2, 16);
    tGen("o o r0r2p p r3rhr1m m m r3cnp o ", 3, 16);
    tGen("o r0r2p m m p p rvp m m m rvp o ", 4, 16);
    tGen("o rhp m m m p cnr3r1p m m rhcno ", 5, 16);
    tGen("o r3r1m p m m m o r3cnrvrcr2f o ", 6, 16);
    tGen("o o r3rhr1p f o o o f f rvf f o ", 7, 16);
    tGen("o o o f rvcno o o o o f r3r1o o ", 8, 16);
    tGen("o o f f rvf f o o o f f p rvf o ", 9, 16);
    tGen("o f f f rvp f f o f f p bbrvf o ", 10, 16);
    tGen("o f f brrvp p f o f p bbhbbbo o ", 11, 16);
    tGen("o o brhrbrp p o o o p p bbp o o ", 12, 16);
    tGen("o o o brp p o o o o o o o o o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }

  void fistPeninsula(){
    _board = new Space[15][16];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("o o o o o o o o o o o o o o o o ", 0, 16);
    tGen("o o o o o o o p o o o p o o o o ", 1, 16);
    tGen("o o o p o o p p p o p cnp o o o ", 2, 16);
    tGen("o o o brp p cnp cnp cnp o o o o ", 3, 16);
    tGen("o o brhrf f f cnp p p p p o o o ", 4, 16);
    tGen("o f p brf f p p p m m m m p o o ", 5, 16);
    tGen("o f p p p p m m p p f f f f o o ", 6, 16);
    tGen("o o cnp p m f f f p p p p p o o ", 7, 16);
    tGen("o p p cnp m f f p cbcbcbcbcbo o ", 8, 16);
    tGen("o cnp p p m f f cbp f f p p o o ", 9, 16);
    tGen("o o p cnp p p p p cbf bbbbo o o ", 10, 16);
    tGen("o o cno cnm f f cbp p bbhbo o o ", 11, 16);
    tGen("o o o o o m f f f cbp f m m o o ", 12, 16);
    tGen("o o o o o o f o o f m m m m o o ", 13, 16);
    tGen("o o o o o o o o o o m m m m m o ", 14, 16);
  }

  void littleIsland(){
    _board = new Space[10][19];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("o o o o o o o o o o o o o o o o o o o ", 0, 19);
    tGen("o o o o o o o o o o o o p f p bbp f o ", 1, 19);
    tGen("o o o o o o o o cnr0rhrhrhrhrhrhhbp o ", 2, 19);
    tGen("o o o o o o o m p rvp f p cncnp p bbo ", 3, 19);
    tGen("o o o o o f p f f rvcnp p f p f p o o ", 4, 19);
    tGen("o o f p p p f p cnrvf f f p o o o o o ", 5, 19);
    tGen("o brp p cncnf f p rvp m o o o o o o o ", 6, 19);
    tGen("o p hrrhrhrhrhrhrhr2cno o o o o o o o ", 7, 19);
    tGen("o f p brp f p o o o o o o o o o o o o ", 8, 19);
    tGen("o o o o o o o o o o o o o o o o o o o ", 9, 19);
  }

  void sabreRange(){
    int len = 15;
    _board = new Space[11][len];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("m m m m f p p p p p p p p bbp ", 0, len);
    tGen("m m m f p r0rhrhrhrhrhrhbbhbbb", 1, len);
    tGen("m m f p p rvf m cnp p p p bbp ", 2, len);
    tGen("m f p p m rvf m m m m m m rvf ", 3, len);
    tGen("f p p m f rvf m f r0rhrhrhr2f ", 4, len);
    tGen("f p m f cnrcrhrhrhrccnf m p f ", 5, len);
    tGen("f r0rhrhrhr2f m f rvf m p p f ", 6, len);
    tGen("f rvm m m m m m f rvm p p f m ", 7, len);
    tGen("p brp p p p cnm f rvp p f m m ", 8, len);
    tGen("brhrbrrhrhrhrhrhrhr2p f m m m ", 9, len);
    tGen("p brp p p p p p p p f m m m m ", 10, len);
  }

/*
  void sabreRange(){
    int len = 15;
    _board = new Space[11][len];
    for(int r = 0; r< _board.length; r++){
         for(int c = 0; c < _board[r].length; c++){
           _board[r][c] = new Space();
         }
     }
    tGen("", 0, len);
    tGen("", 1, len);
    tGen("", 2, len);
    tGen("", 3, len);
    tGen("", 4, len);
    tGen("", 5, len);
    tGen("", 6, len);
    tGen("", 7, len);
    tGen("", 8, len);
    tGen("", 9, len);
    tGen("", 10, len);
  }
*/
  
  void tGen(String terr, int row, int len){
    for(int i = 0; i < len; i++){
      String s = terr.substring(2*i, 2*i + 2);
      if(s.substring(0, 1).equals("r")){
        if(s.substring(1, 2).equals("h")) _board[row][i].terrain = new Road(i, row, 4);
        if(s.substring(1, 2).equals("v")) _board[row][i].terrain = new Road(i, row, 5);
        if(s.substring(1, 2).equals("c")) _board[row][i].terrain = new Road(i, row, 6);
        if(s.substring(1, 2).equals("0")) _board[row][i].terrain = new Road(i, row, 0);
        if(s.substring(1, 2).equals("1")) _board[row][i].terrain = new Road(i, row, 1);
        if(s.substring(1, 2).equals("2")) _board[row][i].terrain = new Road(i, row, 2);
        if(s.substring(1, 2).equals("3")) _board[row][i].terrain = new Road(i, row, 3);
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