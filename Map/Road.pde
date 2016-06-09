class Road extends Terrain{
  Road(){
    super();
    hindrance = 0;
    img = loadImage("road_h.png");
  }
  
  Road(int newx, int newy){
    super(newx, newy, 0);
    img = loadImage("road_h.png");
  }
}