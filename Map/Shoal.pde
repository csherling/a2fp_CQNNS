class Shoal extends Terrain{
  Shoal(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    landerHindrance = 1;
    defense = 0;
    img = loadImage("shoalid.png");
  }
  
  Shoal(int newx, int newy, int type){
    super(newx, newy, 1, 1, 1, 0, 4);
    if(type == 0) img = loadImage("shoaltl.png");
    else if(type == 1) img = loadImage("shoaltm.png");
    else if(type == 2) img = loadImage("shoaltr.png");
    else if(type == 3) img = loadImage("shoalmr.png");
    else if(type == 4) img = loadImage("shoalbr.png");
    else if(type == 5) img = loadImage("shoalbm.png");
    else if(type == 6) img = loadImage("shoalbl.png");
    else if(type == 7) img = loadImage("shoalml.png");
    else img = loadImage("shoalid.png");
  }
}