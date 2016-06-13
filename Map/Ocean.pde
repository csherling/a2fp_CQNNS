class Ocean extends Terrain{
  Ocean(){
    super();
    footHindrance = 10;
    wheelHindrance = 10;
    treadHindrance = 10;
    defense = 0;
    img = loadImage("ocean.png");
  }
  
  Ocean(int newx, int newy, int type){
    super(newx, newy, 10, 10, 10, 0, 4);
    if(type == 0) img = loadImage("cliffnw.png");
    else if(type == 1) img = loadImage("cliffne.png");
    else if(type == 2) img = loadImage("cliffse.png");
    else if(type == 3) img = loadImage("cliffsw.png");
    else if(type == 4) img = loadImage("clifftl.png");
    else if(type == 5) img = loadImage("clifftr.png");
    else if(type == 6) img = loadImage("cliffbr.png");
    else if(type == 7) img = loadImage("cliffbl.png");
    else if(type == 8) img = loadImage("cliffbm.png");
    else if(type == 9) img = loadImage("cliffml.png");
    else if(type == 10) img = loadImage("clifftm.png");
    else if(type == 11) img = loadImage("cliffmr.png");
    else if(type == 12) img = loadImage("cliffiu.png");
    else if(type == 13) img = loadImage("cliffir.png");
    else if(type == 14) img = loadImage("cliffid.png");
    else if(type == 15) img = loadImage("cliffil.png");
    else if(type == 16) img = loadImage("cliffih.png");
    else if(type == 17) img = loadImage("cliffiv.png");
    else img = loadImage("ocean.png");
  }
}