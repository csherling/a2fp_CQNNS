class Airport extends Building{
  Airport(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("45air.png");
    air = true;
  }
  
  Airport(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "5air.png");
    air = true;
  }
}