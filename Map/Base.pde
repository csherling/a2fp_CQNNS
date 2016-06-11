class Base extends Building{
  Base(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("45bas.png");
    ground = true;
  }
  
  Base(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "5bas.png");
    ground = true;
  }
}