class Ocean extends Terrain{
  Ocean(){
    super();
    footHindrance = 10;
    wheelHindrance = 10;
    treadHindrance = 10;
    defense = 0;
    img = loadImage("ocean.png");
  }
  
  Ocean(int newx, int newy){
    super(newx, newy, 10, 10, 10, 0, 4);
    img = loadImage("ocean.png");
  }
}