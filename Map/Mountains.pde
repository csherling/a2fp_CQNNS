class Mountains extends Terrain{
  Mountains(){
    super();
    hindrance = 0;
    img = loadImage("mountain_1.png");
  }
  
  Mountains(int newx, int newy){
    super(newx, newy, 3);
    img = loadImage("mountain_1.png");
  }
}