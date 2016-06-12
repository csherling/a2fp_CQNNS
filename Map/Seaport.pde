class Seaport extends Building{
  Seaport(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("45sea.png");
    sea = true;
  }
  
  Seaport(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "5sea.png");
    sea = true;
  }
}