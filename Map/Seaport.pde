class Seaport extends Building{
  Seaport(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    waterHindrance = 1;
    landerHindrance = 1;
    defense = 3;
    img = loadImage("46sea.png");
    sea = true;
  }
  
  Seaport(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "6sea.png");
    sea = true;
  }
  
  void draw(){
    image(img, x, y-5);
  }  
  
}