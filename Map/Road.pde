class Road extends Terrain{
  Road(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 0;
    img = loadImage("roadho.png");
  }
  
  Road(int newx, int newy, int type){
    super(newx, newy, 1, 1, 1, 0);
    if(type == 0) img = loadImage("roadtl.png");
    else if(type == 1) img = loadImage("roadtr.png");
    else if(type == 2) img = loadImage("roadbr.png");
    else if(type == 3) img = loadImage("roadbl.png");
    else if(type == 4) img = loadImage("roadho.png");
    else if(type == 5) img = loadImage("roadve.png");
    else img = loadImage("roadmi.png");
  }
}