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
    else if (map == 11) {
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
    tGen("o o o o o0ououo1o o0ououo1o o o ", 0, 16);
    tGen("o o0ououo6p p o7ouo6p m o7ouo1o ", 1, 16);
    tGen("o0o6p p m f f f f f f m m p o7o1", 2, 16);
    tGen("olp p m m p p p p p p m m p p or", 3, 16);
    tGen("olcrcrm m cncncncncncnm m cbcbor", 4, 16);
    tGen("olp p p m r0rhrhrhrhr1m p p p or", 5, 16);
    tGen("olbrp brm rvp m m p rvm bbp bbor", 6, 16);
    tGen("olhrbrrvm rvcrm m cbrvm rvbbhbor", 7, 16);
    tGen("olbrf rvm rvp m m p rvm rvf bbor", 8, 16);
    tGen("olp p r3rhr2crm m cbr3rhr2p p or", 9, 16);
    tGen("olcrcrp f f m m m m f f f cbcbor", 10, 16);
    tGen("o3odo5p p p p p otp p p m p o4o2", 11, 16);
    tGen("o o o3o5p p o4odo odo5p o4odo2o ", 12, 16);
    tGen("o o o o3ododo2o o o o3odo2o o o ", 13, 16);
    tGen("o o o o o o o o o o o o o o o o ", 14, 16);
  }

  void craterIsle() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o o0ououououououo1o o o ", 0, 16);
    tGen("o o o o0ouo6p p p p p p o7ouo1o ", 1, 16);
    tGen("o o0ouo6brhrbrrhcrcrcrcnp p o7o1", 2, 16);
    tGen("o0o6p p rvbrp p p p p f f f f or", 3, 16);
    tGen("olp crbrrvp p p crcnf f f f p or", 4, 16);
    tGen("olp p r0r2crp otp f f f f f cnor", 5, 16);
    tGen("olp p rvp p o4olp o4o5p f f f or", 6, 16);
    tGen("olm p rvm o4o2o3odo2olcnf f p or", 7, 16);
    tGen("olp r0r2p oro0ououo o6f f f cnor", 8, 16);
    tGen("olcnrvp cno7o6p p ogp f f f f or", 9, 16);
    tGen("olp rvm p p p cnp p p p p p p or", 10, 16);
    tGen("olcnr3rhr1m p p cnp p bnp bncnor", 11, 16);
    tGen("o3o5p p r3rhr1p p bnp bbp p o4o2", 12, 16);
    tGen("o o3o5cnp p r3rhcnp bbhbbbo4o2o ", 13, 16);
    tGen("o o o3ododododododododododo2o o ", 14, 16);
  }

  void coralLagoon() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o0ououo6m m m o7o1o o o ", 0, 16);
    tGen("o o o0ouo6p p p p p p p o7ouo1o ", 1, 16);
    tGen("o o0o6r0rhcncncncncncncnr1p o7o1", 2, 16);
    tGen("o0o6r0r2p p r3rhr1m m m r3cnp or", 3, 16);
    tGen("olr0r2p m m p p rvp m m m rvp or", 4, 16);
    tGen("olrvp m m m p cnr3r1p m m rvcnor", 5, 16);
    tGen("olr3r1m p m m m otr3cnrhrcr2f or", 6, 16);
    tGen("o3o5r3rhr1p f o4o o5f f rvf f or", 7, 16);
    tGen("o o ohf rvcnofo o o ohf r3r1ofo ", 8, 16);
    tGen("o0o6f f rvf f o7o o6f f p rvf or", 9, 16);
    tGen("olf f f rvp f f ovf f p bbrvf or", 10, 16);
    tGen("olf f brrvp p f ovf p bbhbbbo4o2", 11, 16);
    tGen("o3o5brhrbrp p o4o o5p p bbp oro ", 12, 16);
    tGen("o o3o5brp p o4o2o o3ododododo2o ", 13, 16);
    tGen("o o o3odododo2o o o o o o o o o ", 14, 16);
  }

  void fistPeninsula() {
    _board = new Space[15][16];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o o o0ouo1o o0ouo1o o o ", 0, 16);
    tGen("o o o0ouo1o0o6p o7o o6p o7o1o o ", 1, 16);
    tGen("o o olp o7o6p p p ogp cnp oro o ", 2, 16);
    tGen("o o0o6brp p cnp cnp cnp ofo o o ", 3, 16);
    tGen("o0o6brhrf f f cnp p p p p o7o1o ", 4, 16);
    tGen("olf p brf f p p p m m m m p oro ", 5, 16);
    tGen("olf p p p p m m p p f f f f oro ", 6, 16);
    tGen("o ohcnp p m f f f p p p p p oro ", 7, 16);
    tGen("olp p cnp m f f p cbcbcbcbcboro ", 8, 16);
    tGen("olcnp p p m f f cbp f f p p oro ", 9, 16);
    tGen("o3o5p cnp p p p p cbf bbbbo4o2o ", 10, 16);
    tGen("o olcnotcnm f f cbp p bbhbo7o1o ", 11, 16);
    tGen("o o3odo o5m f f f cbp f m m oro ", 12, 16);
    tGen("o o o o o3o5f o4o5f m m m m o7o1", 13, 16);
    tGen("o o o o o o3odo2o3o5m m m m m o7", 14, 16);
  }

  void littleIsland() {
    _board = new Space[10][19];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o o o o o o o o o o o o0ououououououo1", 0, 19);
    tGen("o o o o o o o o0ouououo6p f p bbp f or", 1, 19);
    tGen("o o o o o o o0o6cnr0rhrhrhrhrhrhhbp or", 2, 19);
    tGen("o o o o o0ouo6m p rvp f p cncnp p bbor", 3, 19);
    tGen("o o0ououo6f p f f rvcnp p f p f p o4o2", 4, 19);
    tGen("o0o6f p p p f p cnrvf f f p o4ododo2o ", 5, 19);
    tGen("olbrp p cncnf f p rvp m o4odo2o o o o ", 6, 19);
    tGen("olp hrrhrhrhrhrhrhr2cno4o2o o o o o o ", 7, 19);
    tGen("olf p brp f p o4odododo2o o o o o o o ", 8, 19);
    tGen("o3ododododododo2o o o o o o o o o o o ", 9, 19);
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
    tGen("o0ououo6p p p p p p o7ouououo1", 0, len);
    tGen("olp p p p r0rhrhbbr1p p p p or", 1, len);
    tGen("olp r0rhrhr2f m hbbbrhrhrhr1or", 2, len);
    tGen("olp rvm f m m p m m m m m rvor", 3, len);
    tGen("olp r3rhr1m m p m m r0rhrhr2or", 4, len);
    tGen("olm m m rvm p f p m rvm m m or", 5, len);
    tGen("olr0rhrhr2m m p m m r3rhr1p or", 6, len);
    tGen("olrvm m m m m p m m f m rvp or", 7, len);
    tGen("olr3rhrhrhbrhrm f r0rhrhr2p or", 8, len);
    tGen("olp p p p r3brrhrhr2p p p p or", 9, len);
    tGen("o3odododo5p p p p p p o4ododo2", 10, len);
  }

  void zeroWood() {
    int len = 15;
    _board = new Space[11][len];
    for (int r = 0; r< _board.length; r++) {
      for (int c = 0; c < _board[r].length; c++) {
        _board[r][c] = new Space();
      }
    }
    tGen("o0ououo6p p p p p p o7ouououo1", 0, len);
    tGen("olp p p p r0rhrhrhrhbbr1p p or", 1, len);
    tGen("olp r0rhrhr2f f f f hbbbrhr1or", 2, len);
    tGen("olp rvcnf f f f f f f f m rvor", 3, len);
    tGen("olp rvf f f f p m f f f r0r2or", 4, len);
    tGen("olm rvf f f p bnp f f f rvm or", 5, len);
    tGen("olr0r2f f f m p f f f f rvp or", 6, len);
    tGen("olrvm f f f f f f f f cnrvp or", 7, len);
    tGen("olr3rhbrhrf f f f r0rhrhr2p or", 8, len);
    tGen("olp p r3brrhrhrhrhr2p p p p or", 9, len);
    tGen("o3odo5p p p p p p p p o4ododo2", 10, len);
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
    tGen("o o o o o o o olm m m m m m m m f p p p p p p f f f f f f f f p p f f f f ", 0, len);
    tGen("o o o o o o o0o6m m m m m m m m m f p p p p f f o4o5f f p p p p p p p f f ", 1, len);
    tGen("o o o o o o olm m m m bbm p p m m m cbcbf f f f o7o6p p f p p p p p bbp f ", 2, len);
    tGen("o o o o o o olm m p p rhrhrhrhrhrhrhrhrhrhrhrhrhrhrhcbcbrhrhrhrhabbbhbbbp ", 3, len);
    tGen("o o o o o o0o6m p f abcbcbm p m m p p p bbp p p p p p f p o4ododo5p bbp p ", 4, len);
    tGen("o o o o o olm m cbp o4odo5f m m m p p abp p p cbp p f p o4o2o o olp rvabf ", 5, len);
    tGen("o o o o o o3ododododo2o o3ododododo5bbp p p p p m m m p oro o o olm rvm p ", 6, len);
    tGen("o o o o o0ououououououououououo1o o3o5p m p cbp m m m m oro o o olm rvm m ", 7, len);
    tGen("o o o o olm cncnp bnp p p m m oro o o3odododododododododo2o o o olm rvm m ", 8, len);
    tGen("o o o o olm m m anp p p m m m o7ououououououououououououo1o o o olm rvm m ", 9, len);
    tGen("o o o o0o6m m r0rhrhr1m m m m m m cnp p m m m p cncnm m o7ouououo6m rvm m ", 10, len);
    tGen("o o o olm m m rvf f rvm m m m m m p anm m m r0rhrhrhr1m m m cnm m m rvm m ", 11, len);
    tGen("o o o0o6p m m rvm m rvm m m r0rhrhrhr1m p m rvf p f rvm m r0rhrhrhrhrcm m ", 12, len);
    tGen("o o olp f m m rvm m rvm m m rvf p f rvf cnf rvm cnm rvm m rvf bnp f rvm m ", 13, len);
    tGen("o o olp f f f rvm m rvm p m rvm cnm rcrhrhrhr2m m m rvm m rvm p anm rvm m ", 14, len);
    tGen("o o0o6crr0rhrhr2m m rvf cnf rvm m m rvm m m m m m m rvf f rvm m m m rvm m ", 15, len);
    tGen("o olp p rvm m m m m r3rhrhrhr2m m m rvm m m m m m m r3rhrhr2m m m m rvm m ", 16, len);
    tGen("o olp f rvm m m m m m m m m m m m m rvm m m m m m m m m m m m m m m rvm m ", 17, len);
    tGen("o olp p rvf m m m m m m m m m m m p rvf f m m m m m m m m m m m m m rvf f ", 18, len);
    tGen("o olarp rvp f m m m m m m m m m p p rvp p f m m m m m m m m m m p p rvf f ", 19, len);
    tGen("o0o6p brrvp f m m m m m m m m p p bnrvbnp p f m m cncnm m m m f f cnrvp f ", 20, len);
    tGen("o6p brp hrrhrhrhrhrhrhrhrhrhrhrhrhrhrcrhrhrhrhrhrhrhrhrhrhrhrhrhbnrhr2cnf ", 21, len);
    tGen("p p p p p p m m m m m m m m m p p p anp p p f m m m m m m m p f p p p p p ", 22, len);
    tGen("f p crcrcrm m m m m m m m m m m f f f cncnf f m m m m m m m m m p ancncnf ", 23, len);
    tGen("f f f m m m m m m m m m m m m m m m f f f f m m m m m m m m m m m f p f f ", 24, len);
  }

  void swanCave(){
     int len = 24;
     _board = new Space[17][len];
     for(int r = 0; r< _board.length; r++){
     for(int c = 0; c < _board[r].length; c++){
     _board[r][c] = new Space();
     }
     }
     tGen("o0o6p p p p f f f f f f f f f f p p p p p o7o1o ", 0, len);
     tGen("o6p hrp f f f cncnf f f p f p f cncnf f p p o7o1", 1, len);
     tGen("p p p p p p f f p f f cncnf f f p f f f p p p or", 2, len);
     tGen("p brbrbrp cncnp f p f p f f p f f f p cncnp p or", 3, len);
     tGen("p p brp p o4odo o o o o o o o o f f f f p f p or", 4, len);
     tGen("p p sro4odo2o o o o o o o o o o o o snp p bno4o2", 5, len);
     tGen("odododo2o o o o o0o o o o o o o o o3ododo5rvoro ", 6, len);
     tGen("o o o o o o o o olsncnf cno o1o o o o o olrvoro ", 7, len);
     tGen("o o o o o o o o o3o5cnbncnsnoro o o o o0o6p o7o1", 8, len);
     tGen("o o o o o o o o o o3ododododo2o o o o olf f f or", 9, len);
     tGen("o o o o o o o o o o o o o o o o o o0ouo6p cbf or", 10, len);
     tGen("ououououo1o o o o o o o o o o o o o snp p f p or", 11, len);
     tGen("p p sbp o7ouo1o0o o o o o o o o f p p cbcbp f or", 12, len);
     tGen("p bbbbbbp p o7o6p f f f o o f f f f f p p p o4o2", 13, len);
     tGen("p p bbp p p f f f f f f f f f f cbcbp bnp o4o2o ", 14, len);
     tGen("o5p p hbp p f f cbcbf f f p f p p f p p o4o2o o ", 15, len);
     tGen("o3odo5p p p f f f p f p cbcbp p p p p o4o2o o o ", 16, len);
 }

  void royalChannel(){
   int len = 39;
   _board = new Space[30][len];
   for(int r = 0; r< _board.length; r++){
   for(int c = 0; c < _board[r].length; c++){
   _board[r][c] = new Space();
   }
   }
   tGen("m m m p p p p p p p p p p p p p p p p p p p oro o o o o o o0ououo1o o o o o o ", 0, len);
   tGen("m m p p p p p p p p p p p p p p cncnp p cnp oro o o o o o olp p oro o o o o o ", 1, len);
   tGen("m p p p cnr0cnrhcnrhrhcnp p r0rhrhrhrhrhr1cnoro o o o o o o sraroro o o o o o ", 2, len);
   tGen("p p cncnrhrcr1p p p p rcrhcnr2p p p p p rvo4o2o o o o o o o3o odo2o o o o o o ", 3, len);
   tGen("cnr0r2p p p rvp p p cnrvp rvp p anp cnrvo4o2o o o o o o o o o o o o o o o o o ", 4, len);
   tGen("r0r2p p crf r3cncncnrhrcrhrcr1cnp r0rhr2oro o o o o o o o o o o o o o o o o o ", 5, len);
   tGen("rvp f p f f f p p p f f f p r3rhcnr2p o4o2o o o o o o o o o o o o o o o o o o ", 6, len);
   tGen("rvf f crf f f f f crp f p p f p p p p oro o o o0ouo1o o o o o o o o o o o o o ", 7, len);
   tGen("rvp f p f f p f f f crp crcrf p p f o4o2o o o olp oro o o o o o o o o o0o o o ", 8, len);
   tGen("r3cnp p p f cnp p f f f f f p p f f oro o o o o sro o o o o o o o o o0o p p p ", 9, len);
   tGen("f f f f p p p f p p f f f p p f f o4o2o o o o o3o o2o o o o o o o0o olp p f p ", 10, len);
   tGen("f f p f f p f f f crf f p p f f f oro o o o o o o o o o o o o0o op o7sbabp p ", 11, len);
   tGen("f p p p p p p f f p f p p f f f o4o2o o o o o o o o o o o0o o f o7sbrhbbrhabp ", 12, len);
   tGen("f p f f f f p p f p p p f f f o4o2o o o o o o o o o o0o o p p m p r3bbhbbbr2p ", 13, len);
   tGen("f p p f f f f p p p f f f f o4o2o o0ouo1o o o o o o0o p p p m p p p r3bbr2p p ", 14, len);
   tGen("f f p f f f f f p f f f f o4o2o o olp oro o o o o0o p p p m p p p bbp rvp abp ", 15, len);
   tGen("f f p p f f f f p f f f o4o2o o o o sro o o o o0o p p p f p p cbcbr0rhrccbp p ", 16, len);
   tGen("f f f p f f f p p f f o4o2o o o o o3o o2o o o0o p p p p p r0rhrhrhr2p rvp f p ", 17, len);
   tGen("f p p p p p p p f f o4o2o o o o o o o o o o0o p p p f cbcbrvp p p p cbrvp p f ", 18, len);
   tGen("p arrhbrrhbrr1p p o o2o o o o o o o o o o0o p p p f f rhrhrccbcbp m p r3r1p p ", 19, len);
   tGen("rvp brhrbrp r3rho o2o o o o o o o o o o0o p p m p f p p p rvp p m m m p rvcbp ", 20, len);
   tGen("rvarp brrhsro o o2o o o o o o o o o o o p p m p p p p p m rvp m m m m p rvp p ", 21, len);
   tGen("r3rcsrr2o o o2o o o o o o o o o o o0o o p m m p cncncnp p rvp p p m p p rvcbp ", 22, len);
   tGen("p rhoro o2o o o o o o o o o o o o0o p p m m p p r0rhrhrhrhrccncncnp p cnrvp p ", 23, len);
   tGen("o o o2o o o o o o o o o o o o o olp m m p p p cnrvp p p p r3rhrhrhrhanrhrccnp ", 24, len);
   tGen("o o o o o o o o o o o o o o o o0ousnp p anr0rhrhr2p m p cnp p p p m p p rvp p ", 25, len);
   tGen("o o o o o o o o o o o o o o o o p r3cnp p rvp p p m p p p p f f f m p cnrvp m ", 26, len);
   tGen("o o o o o o o o o o o o o o o0o p p rvp p rvp f p p cncnp p p p p p p p rvp m ", 27, len);
   tGen("o o o o o o o o o o o o o o o p p cnr3cncnr3rhrhrhrhrhrhrhrhrhcncncncnrhr2p m ", 28, len);
   tGen("o o o o o o o o o o o o o o o p p p p p p p p p p p p p p p p p p p p p p p m ", 29, len);
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
      } else if (s.substring(0, 1).equals("o")) {
        if (s.substring(1, 2).equals("0")) _board[row][i].terrain = new Ocean(i, row, 0);
        if (s.substring(1, 2).equals("1")) _board[row][i].terrain = new Ocean(i, row, 1);
        if (s.substring(1, 2).equals("2")) _board[row][i].terrain = new Ocean(i, row, 2);
        if (s.substring(1, 2).equals("3")) _board[row][i].terrain = new Ocean(i, row, 3);
        if (s.substring(1, 2).equals("u")) _board[row][i].terrain = new Ocean(i, row, 8);
        if (s.substring(1, 2).equals("r")) _board[row][i].terrain = new Ocean(i, row, 9);
        if (s.substring(1, 2).equals("d")) _board[row][i].terrain = new Ocean(i, row, 10);
        if (s.substring(1, 2).equals("l")) _board[row][i].terrain = new Ocean(i, row, 11);
        if (s.substring(1, 2).equals("4")) _board[row][i].terrain = new Ocean(i, row, 4);
        if (s.substring(1, 2).equals("5")) _board[row][i].terrain = new Ocean(i, row, 5);
        if (s.substring(1, 2).equals("6")) _board[row][i].terrain = new Ocean(i, row, 6);
        if (s.substring(1, 2).equals("7")) _board[row][i].terrain = new Ocean(i, row, 7);
        if (s.substring(1, 2).equals("t")) _board[row][i].terrain = new Ocean(i, row, 12);
        if (s.substring(1, 2).equals("h")) _board[row][i].terrain = new Ocean(i, row, 13);
        if (s.substring(1, 2).equals("g")) _board[row][i].terrain = new Ocean(i, row, 14);
        if (s.substring(1, 2).equals("f")) _board[row][i].terrain = new Ocean(i, row, 15);
        if (s.substring(1, 2).equals("")) _board[row][i].terrain = new Ocean(i, row, 16);
        if (s.substring(1, 2).equals("v")) _board[row][i].terrain = new Ocean(i, row, 17);
        if (s.substring(1, 2).equals(" ")) _board[row][i].terrain = new Ocean(i, row, 18);
      } else {
        int x = i;
        System.out.println("Typo: " + row + " " + x);
      }
    }
  }
}