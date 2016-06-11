class HQ extends Building{
  HQ(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    airHindrance = 1;
    defense = 4;
    img = loadImage("45hea.png");
  }
  
  HQ(int newx, int newy, int type){
    super(newx, newy, 4, type);
    img = loadImage(type + "5hea.png");
  }
}