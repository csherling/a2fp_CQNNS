class HQ extends Terrain{
  HQ(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 4;
    img = loadImage("45hea.png");
  }
  
  HQ(int newx, int newy){
    super(newx, newy, 1, 1, 1, 4);
    img = loadImage("45hea.png");
  }
}