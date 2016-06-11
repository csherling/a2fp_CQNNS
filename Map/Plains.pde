class Plains extends Terrain{
  Plains(){
    super();
    footHindrance = 1;
    wheelHindrance = 2;
    treadHindrance = 1;
    defense = 1;
    img = loadImage("plains.png");
  }
  
  Plains(int newx, int newy){
    super(newx, newy, 1, 2, 1, 1);
    img = loadImage("plains.png");
  }
  
  //void draw(){
  //  fill(color(0, 255, 0));
  //  rect(x, y, 16, 16);
    
  //}
  
}