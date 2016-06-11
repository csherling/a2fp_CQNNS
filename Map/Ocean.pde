class Ocean extends Terrain{
  Ocean(){
    super();
    footHindrance = 10;
    wheelHindrance = 10;
    treadHindrance = 10;
    defense = 0;
  }
  
  Ocean(int newx, int newy){
    super(newx, newy, 10, 10, 10, 0);
  }
  
  void draw(){
    fill(color(0, 0, 150));
    rect(x, y, 16, 16);
  }
}