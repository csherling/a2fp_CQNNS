class Mountains extends Terrain{
  Mountains(){
    super();
    footHindrance = 1;
    wheelHindrance = 10;
    treadHindrance = 10;
    defense = 3;
    img = loadImage("mountain_1.png");
  }
  
  Mountains(int newx, int newy){
    super(newx, newy, 1, 10, 10, 3);
    img = loadImage("mountain_1.png");
  }
}