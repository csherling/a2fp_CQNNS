class Forest extends Terrain{
  Forest(){
    super();
    footHindrance = 1;
    wheelHindrance = 3;
    treadHindrance = 2;
    defense = 2;
    img = loadImage("forest.png");
  }
  
  Forest(int newx, int newy){
    super(newx, newy, 1, 3, 2, 2, 4);
    img = loadImage("forest.png");
  }
}