class Base extends Building{
  Base(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("46bas.png");
    ground = true;
  }
  
  Base(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "6bas.png");
    ground = true;
  }
  
  void draw(){
    image(img, x, y);
  }

}