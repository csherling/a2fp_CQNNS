class Mountains extends Terrain{
  Mountains(){
    super();
    footHindrance = 2;
    wheelHindrance = 10;
    treadHindrance = 10;
    defense = 3;
    img = loadImage("mountain.png");
  }
  
  Mountains(int newx, int newy){
    super(newx, newy, 2, 10, 10, 3, 4);
    img = loadImage("mountain.png");
  }
}