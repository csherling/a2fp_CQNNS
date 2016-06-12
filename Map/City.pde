class City extends Building{
  City(){
    super();
    footHindrance = 1;
    wheelHindrance = 1;
    treadHindrance = 1;
    defense = 3;
    img = loadImage("46cit.png");
  }
  
  City(int newx, int newy, int type){
    super(newx, newy, 3, type);
    img = loadImage(type + "6cit.png");
  }
  
  void draw(){
    image(img, x, y-5);
  }

}