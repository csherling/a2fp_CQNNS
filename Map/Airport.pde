class Airport extends Terrain{
  Airport(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("45air.png");
  }
  
  Airport(int newx, int newy){
    super(newx, newy, 1, 1, 1, 3);
    img = loadImage("45air.png");
  }
}