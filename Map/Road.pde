class Road extends Terrain{
  Road(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 0;
    img = loadImage("roadho.png");
  }
  
  Road(int newx, int newy){
    super(newx, newy, 1, 1, 1, 0);
    img = loadImage("roadho.png");
  }
}