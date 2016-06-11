class Base extends Terrain{
  Base(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("45bas.png");
  }
  
  Base(int newx, int newy){
    super(newx, newy, 1, 1, 1, 3);
    img = loadImage("45bas.png");
  }
}