class MapMaker {

  Space[][] _board;

  MapMaker(int map) {
    if (map == 0) {
      beanIsland();
    } 
    else if (map == 1) {
      craterIsle();
    } 
    else if (map == 2) {
      coralLagoon();
    } 
    else if (map == 3) {
      fistPeninsula();
    } 
    else if (map == 4) {
      littleIsland();
    } 
    else if (map == 5) {
      sabreRange();
    } 
    else if (map == 6) {
      cogIsle();
    } 
    else if (map == 7) {
      zeroWood();
    } 
    else if (map == 8) {
      switchback();
    }
    else if (map == 9) {
      direRange();
    }
    else if (map == 10) {
      swanCave();
    }
    else if (map == 10) {
      royalChannel();
    }

  }

  void beanIsland() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
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

  void craterIsle() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
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

  void coralLagoon() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o o o o m m m o o o o o ", 0, 16);
    tGen("o o o o o p p p p p p p o o o o ", 1, 16);
    tGen("o o o r0rhcncncncncncncnr1p o o ", 2, 16);
    tGen("o o r0r2p p r3rhr1m m m r3cnp o ", 3, 16);
    tGen("o r0r2p m m p p rvp m m m rvp o ", 4, 16);
    tGen("o rvp m m m p cnr3r1p m m rvcno ", 5, 16);
    tGen("o r3r1m p m m m o r3cnrhrcr2f o ", 6, 16);
    tGen("o o r3rhr1p f o o o f f rvf f o ", 7, 16);
    tGen("o o o f rvcno o o o o f r3r1o o ", 8, 16);
    tGen("o o f f rvf f o o o f f p rvf o ", 9, 16);
    tGen("o f f f rvp f f o f f p bbrvf o ", 10, 16);
    tGen("o f f brrvp p f o f p bbhbbbo o ", 11, 16);
    tGen("o o brhrbrp p o o o p p bbp o o ", 12, 16);
    tGen("o o o brp p o o o o o o o o o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }

  void fistPeninsula() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
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

  void littleIsland() {
    _board = new Space[10][19];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
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

  void sabreRange() {
    int len = 15;
    _board = new Space[11][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
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

  void asphaltMaze() {
    int len = 15;
    _board = new Space[11][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("f f f f f p p p p p p p p bbp ", 0, len);
    tGen("f f f p p r0rhrcrhrcrhrcbbhbbb", 1, len);
    tGen("f f f p f rvf rfv rfv rfp bbp ", 2, len);
    tGen("f p p r0rhrcrhcnrhrcrhrcrhrcp ", 3, len);
    tGen("f p f rvf rvf rvf rvf rvf rvp ", 4, len);
    tGen("p r0rhrcrhcnrhrcrhcnrhrcrhr2p ", 5, len);
    tGen("p rvf rvf rvf rvf rvf rvf p f ", 6, len);
    tGen("p r3rhrcrhrcrhcnrhrcrhr2p p f ", 7, len);
    tGen("p brf vrf vrf vrf vrf p f f f ", 8, len);
    tGen("brhrbrrcrhrcrhrcrhr2p p f f f ", 9, len);
    tGen("p brp p p p p p p p f f f f f ", 10, len);
  }

  void cogIsle() {
    int len = 15;
    _board = new Space[11][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o p p p p p p o o o o o ", 0, len);
    tGen("o p p p p r0rhrhbbr1p p p p o ", 1, len);
    tGen("o p r0rhrhr2f m hbbbrhrhrhr1o ", 2, len);
    tGen("o p rvm f m m p m m m m m rvo ", 3, len);
    tGen("o p r3rhr1m m p m m r0rhrhr2o ", 4, len);
    tGen("o m m m rvm p f p m rvm m m o ", 5, len);
    tGen("o r0rhrhr2m m p m m r3rhr1p o ", 6, len);
    tGen("o rvm m m m m p m m f m rvp o ", 7, len);
    tGen("o r3rhrhrhbrhrm f r0rhrhr2p o ", 8, len);
    tGen("o p p p p r3brrhrhr2p p p p o ", 9, len);
    tGen("o o o o o p p p p p p o o o o ", 10, len);
  }

  void zeroWood() {
    int len = 15;
    _board = new Space[11][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o p p p p p p o o o o o ", 0, len);
    tGen("o p p p p r0rhrhrhrhbbr1p p o ", 1, len);
    tGen("o p r0rhrhr2f f f f hbbbrhr1o ", 2, len);
    tGen("o p rvcnf f f f f f f f m rvo ", 3, len);
    tGen("o p rvf f f f p m f f f r0r2o ", 4, len);
    tGen("o m rvf f f p bnp f f f rvm o ", 5, len);
    tGen("o r0r2f f f m p f f f f rvp o ", 6, len);
    tGen("o rvm f f f f f f f f cnrvp o ", 7, len);
    tGen("o r3rhbrhrf f f f r0rhrhr2p o ", 8, len);
    tGen("o p p r3brrhrhrhrhr2p p p p o ", 9, len);
    tGen("o o o p p p p p p p p o o o o ", 10, len);
  }

  void switchback() {
    int len = 21;
    _board = new Space[15][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("m m m m m m m m m m m m m m m m m m m m m ", 0, len);
    tGen("m m cnbnm m m m cncnm m m m cncnm m m hbm ", 1, len);
    tGen("m r0rhrhr1m m r0rhrhr1m m r0rhrhr1m bbrvbb", 2, len);
    tGen("m rvm m rvm m rvm m rvf m rvm m rvm bbrvbb", 3, len);
    tGen("m rvm m rvm m rvm f rvf f rvm m rvm m rvm ", 4, len);
    tGen("m rvf m rvm m rvf f rvf m rvm cnrvf m rvm ", 5, len);
    tGen("m rvf f rvcnm rvf m rvf f rvcnm rvf f rvm ", 6, len);
    tGen("m rvf f rvcnm rvcnf rvm cnrvbnm rvm f rvm ", 7, len);
    tGen("m rvm f rvm bnrvf f rvf f rvm m rvf f rvm  ", 8, len);
    tGen("m rvf f rvm m rvf m rvf m rvm m rvm f rvm ", 9, len);
    tGen("m rvm m rvm m rvf f rvf f rvm m rvm m rvm ", 10, len);
    tGen("brrvbrm rvm m rvm m rvf m rvm m rvm m rvm ", 11, len);
    tGen("brrvbrm r3rhrhr2m m r3rhrhr2m m r3rhrhr2m ", 12, len);
    tGen("m hrm m m cncnm m m m cncnm m m m bncnm m ", 13, len);
    tGen("m m m m m m m m m m m m m m m m m m m m m ", 14, len);
  }

  void direRange() {
    int len = 37;
    _board = new Space[25][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o o o o m m m m m m m o f p p p p p p f f f f f f f f p p f f f f ", 0, len);
    tGen("o o o o o o o o m m m m m m m o m f p p p p f f o o f f p p p p p p p f f ", 1, len);
    tGen("o o o o o o o m m m m bbm p p o m m cbcbf f f f o o p p f p p p p p bbp f ", 2, len);
    tGen("o o o o o o o m m p p rhrhrhrhrhrhrhrhrhrhrhrhrhrhrhcbcbrhrhrhrhabbbhbbbp ", 3, len);
    tGen("o o o o o o o m p f abcbcbm p o m p p p bbp p p p p p f p o o o o p bbp p ", 4, len);
    tGen("o o o o o o m m cbp o o o f m o m p p abp p p cbp p f p o o o o o p rvabf ", 5, len);
    tGen("o o o o o o o o o o o o o o o o o o bbp p p p p m m m p o o o o o m rvm p ", 6, len);
    tGen("o o o o o o o o o o o o o o o o o o o p m p cbp m m m m o o o o o m rvm m ", 7, len);
    tGen("o o o o o m cncnp bnp p p m m o o o o o o o o o o o o o o o o o o m rvm m ", 8, len);
    tGen("o o o o o m m m anp p p m m m o o o o o o o o o o o o o o o o o o o rvo o ", 9, len);
    tGen("o o o o o m m r0rhrhr1m m m m m m cnp p m m m p cncnm m o o o o o m rvm m ", 10, len);
    tGen("o o o o m m m rvf f rvm m m m m m p anm m m r0rhrhrhr1m m m cnm m m rvm m ", 11, len);
    tGen("o o o p p m m rvm m rvm m m r0rhrhrhr1m p m rvf p f rvm m r0rhrhrhrhrcm m ", 12, len);
    tGen("o o p p f m m rvm m rvm m m rvf p f rvf cnf rvm cnm rvm m rvf bnp f rvm m ", 13, len);
    tGen("o o p p f f f rvm m rvm p m rvm cnm rcrhrhrhr2m m m rvm m rvm p anm rvm m ", 14, len);
    tGen("o o p crr0rhrhr2m m rvf cnf rvm m m rvm m m m m m m rvf f rvm m m m rvm m ", 15, len);
    tGen("o p p p rvm m m m m r3rhrhrhr2m m m rvm m m m m m m r3rhrhr2m m m m rvm m ", 16, len);
    tGen("o p p f rvm m m m m m m m m m m m m rvm m m m m m m m m m m m m m m rvm m ", 17, len);
    tGen("o p p p rvf m m m m m m m m m m m p rvf f m m m m m m m m m m m m m rvf f ", 18, len);
    tGen("o p arp rvp f m m m m m m m m m p p rvp p f m m m m m m m m m m p p rvf f ", 19, len);
    tGen("o o p brrvp f m m m m m m m m p p bnrvbnp p f m m cncnm m m m f f cnrvp f ", 20, len);
    tGen("o p brp hrrhrhrhrhrhrhrhrhrhrhrhrhrhrcrhrhrhrhrhrhrhrhrhrhrhrhrhbnrhr2cnf ", 21, len);
    tGen("p p p p p p m m m m m m m m m p p p anp p p f m m m m m m m p f p p p p p ", 22, len);
    tGen("f p crcrcrm m m m m m m m m m m f f f cncnf f m m m m m m m m m p ancncnf ", 23, len);
    tGen("f f f m m m m m m m m m m m m m m m f f f f m m m m m m m m m m m f p f f ", 24, len);
  }

  void swanCave(){
     int len = 24;
     _board = new Space[11][len];
     for(int r = 0; r< _board.length; r++){
     for(int c = 0; c < _board[r].length; c++){
     _board[r][c] = new Space();
     }
     }
     tGen("o o p p p p f f f f f f f f f f p p p p p o o o ", 0, len);
     tGen("o p hrp f f f cncnf f f p f p f cncnf f p p o o ", 1, len);
     tGen("p p p p p p f f p f f cncnf f f p f f f p p p o ", 2, len);
     tGen("p brbrbrp cncnp f p f p f f p f f f p cncnp p o ", 3, len);
     tGen("p p brp p o o p p p p p p p p p f f f f p f p o ", 4, len);
     tGen("p p sro o o o o o o o o o o o o p p snp p bno o ", 5, len);
     tGen("o o o o o o o o o p p p p o o o o o o o o rvo o ", 6, len);
     tGen("o o o o o o o o o sncnf cnp o o o o o o o rvo o ", 7, len);
     tGen("o o o o o o o o o o cnbncnsno o o o o o o p o o ", 8, len);
     tGen("o o o o o o o o o o o o o o o o o o o o f f f o ", 9, len);
     tGen("o o o o o o o o o o o o o o o o o o o o p cbf o ", 10, len);
     tGen("o o o o o o o o o o o o o o o o p p snp p f p o ", 11, len);
     tGen("p p sbp o o o o p p p p o o p p f p p cbcbp f o ", 12, len);
     tGen("p bbbbbbp p o o p f f f p p f f f f f p p p o o ", 13, len);
     tGen("p p bbp p p f f f f f f f f f f cbcbp bnp o o o ", 14, len);
     tGen("o p p hbp p f f cbcbf f f p f p p f p p o o o o ", 15, len);
     tGen("o o o p p p f f f p f p cbcbp p p p p o o o o o ", 16, len);
 }

  void royalChannel(){
   int len = 39;
   _board = new Space[11][len];
   for(int r = 0; r< _board.length; r++){
   for(int c = 0; c < _board[r].length; c++){
   _board[r][c] = new Space();
   }
   }
   tGen("m m m p p p p p p p p p p p p p p p p p p p o o o o o o o o o o o o o o o o o ", 0, len);
   tGen("m m p p p p p p p p p p p p p p cncnp p cnp o o o o o o o o p p o o o o o o o ", 1, len);
   tGen("m p p p cnr0cnrhcnrhrhcnp p r0rhrhrhrhrhr1cno o o o o o o o sraro o o o o o o ", 2, len);
   tGen("p p cncnrhrcr1p p p p rcrhcnr2p p p p p rvo o o o o o o o o o o o o o o o o o ", 3, len);
   tGen("cnr0r2p p p rvp p p cnrvp rvp p anp cnrvo o o o o o o o o o o o o o o o o o o ", 4, len);
   tGen("r0r2p p crf r3cncncnrhrcrhrcr1cnp r0rhr2o o o o o o o o o o o o o o o o o o o ", 5, len);
   tGen("rvp f p f f f p p p f f f p r3rhcnr2p o o o o o o o o o o o o o o o o o o o o ", 6, len);
   tGen("rvf f crf f f f f crp f p p f p p p p o o o o o o o o o o o o o o o o o o o o ", 7, len);
   tGen("rvp f p f f p f f f crp crcrf p p f o o o o o o p o o o o o o o o o o o p p p ", 8, len);
   tGen("r3cnp p p f cnp p f f f f f p p f f o o o o o o sro o o o o o o o o o p p p p ", 9, len);
   tGen("f f f f p p p f p p f f f p p f f o o o o o o o o o o o o o o o o p o p p f p ", 10, len);
   tGen("f f p f f p f f f crf f p p f f f o o o o o o o o o o o o o o p o p o sbabp p", 11, len);
   tGen("f p p p p p p f f p f p p f f f o o o o o o o o o o o o o p p f o sbrhbbrhabp ", 12, len);
   tGen("f p f f f f p p f p p p f f f o o o o o o o o o o o o p p p p m p r3bbhbbbr2p ", 13, len);
   tGen("f p p f f f f p p p f f f f o o o o o o o o o o o o p p p p m p p p r3bbr2p p ", 14, len);
   tGen("f f p f f f f f p f f f f o o o o o p o o o o o o p p p p m p p p bbp rvp abp ", 15, len);
   tGen("f f p p f f f f p f f f o o o o o o sro o o o o p p p p f p p cbcbr0rhrccbp p ", 16, len);
   tGen("f f f p f f f p p f f o o o o o o o o o o o o p p p p p p r0rhrhrhr2p rvp f p ", 17, len);
   tGen("f p p p p p p p f f o o o o o o o o o o o o p p p p f cbcbrvp p p p cbrvp p f ", 18, len);
   tGen("p arrhbrrhbrr1p p p o o o o o o o o o o o p p p p f f rhrhrccbcbp m p r3r1p p ", 19, len);
   tGen("rvp brhrbrp r3rhp o o o o o o o o o o o p p p m p f p p p rvp p m m m p rvcbp ", 20, len);
   tGen("rvarp brrhsrp p o o o o o o o o o o o p p p m p p p p p m rvp m m m m p rvp p ", 21, len);
   tGen("r3rcsrr2p o o o o o o o o o o o o o p p p m m p cncncnp p rvp p p m p p rvcbp ", 22, len);
   tGen("p rho p o o o o o o o o o o o o o p p p m m p p r0rhrhrhrhrccncncnp p cnrvp p ", 23, len);
   tGen("p p o o o o o o o o o o o o o o o p m m p p p cnrvp p p p r3rhrhrhrhanrhrccnp ", 24, len);
   tGen("o o o o o o o o o o o o o o o o o snp p anr0rhrhr2p m p cnp p p p m p p rvp p ", 25, len);
   tGen("o o o o o o o o o o o o o o o p p r3cnp p rvp p p m p p p p f f f m p cnrvp m ", 26, len);
   tGen("o o o o o o o o o o o o o o o p p p rvp p rvp f p p cncnp p p p p p p p rvp m ", 27, len);
   tGen("o o o o o o o o o o o o o o p p p cnr3cncnr3rhrhrhrhrhrhrhrhrhcncncncnrhr2p m ", 28, len);
   tGen("o o o o o o o o o o o o o o p p p p p p p p p p p p p p p p p p p p p p p p m ", 29, len);
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

  void tGen(String terr, int row, int len) {
    for (int i = 0; i < len; i++) {
      String s = terr.substring(2*i, 2*i + 2);
      if (s.substring(0, 1).equals("r")) {
        if (s.substring(1, 2).equals("h")) _board[row][i].terrain = new Road(i, row, 4);
        if (s.substring(1, 2).equals("v")) _board[row][i].terrain = new Road(i, row, 5);
        if (s.substring(1, 2).equals("c")) _board[row][i].terrain = new Road(i, row, 6);
        if (s.substring(1, 2).equals("0")) _board[row][i].terrain = new Road(i, row, 0);
        if (s.substring(1, 2).equals("1")) _board[row][i].terrain = new Road(i, row, 1);
        if (s.substring(1, 2).equals("2")) _board[row][i].terrain = new Road(i, row, 2);
        if (s.substring(1, 2).equals("3")) _board[row][i].terrain = new Road(i, row, 3);
      } else if (s.equals("p ")) {
        _board[row][i].terrain = new Plains(i, row);
      } else if (s.equals("f ")) {
        _board[row][i].terrain = new Forest(i, row);
      } else if (s.equals("m ")) {
        _board[row][i].terrain = new Mountains(i, row);
      } else if (s.equals("o ")) {
        _board[row][i].terrain = new Ocean(i, row);
      } else if (s.substring(0, 1).equals("h")) {
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new HQ(i, row, 0);
        if (s.substring(1, 2).equals("b")) _board[row][i].terrain = new HQ(i, row, 1);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new HQ(i, row, 2);
        if (s.substring(1, 2).equals("y")) _board[row][i].terrain = new HQ(i, row, 3);
        if (s.substring(1, 2).equals("n")) _board[row][i].terrain = new HQ(i, row, 4);
      } else if (s.substring(0, 1).equals("c")) {
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new City(i, row, 0);
        if (s.substring(1, 2).equals("b")) _board[row][i].terrain = new City(i, row, 1);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new City(i, row, 2);
        if (s.substring(1, 2).equals("y")) _board[row][i].terrain = new City(i, row, 3);
        if (s.substring(1, 2).equals("n")) _board[row][i].terrain = new City(i, row, 4);
      } else if (s.substring(0, 1).equals("b")) {
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new Base(i, row, 0);
        if (s.substring(1, 2).equals("b")) _board[row][i].terrain = new Base(i, row, 1);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new Base(i, row, 2);
        if (s.substring(1, 2).equals("y")) _board[row][i].terrain = new Base(i, row, 3);
        if (s.substring(1, 2).equals("n")) _board[row][i].terrain = new Base(i, row, 4);
      } else if (s.substring(0, 1).equals("a")) {
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new Airport(i, row, 0);
        if (s.substring(1, 2).equals("b")) _board[row][i].terrain = new Airport(i, row, 1);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new Airport(i, row, 2);
        if (s.substring(1, 2).equals("y")) _board[row][i].terrain = new Airport(i, row, 3);
        if (s.substring(1, 2).equals("n")) _board[row][i].terrain = new Airport(i, row, 4);
      } else if (s.substring(0, 1).equals("s")) {
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new Seaport(i, row, 0);
        if (s.substring(1, 2).equals("b")) _board[row][i].terrain = new Seaport(i, row, 1);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new Seaport(i, row, 2);
        if (s.substring(1, 2).equals("y")) _board[row][i].terrain = new Seaport(i, row, 3);
        if (s.substring(1, 2).equals("n")) _board[row][i].terrain = new Seaport(i, row, 4);
      } else {
        int x = i;
        System.out.println("Typo: " + row + " " + x);
      }
    }
  }
}