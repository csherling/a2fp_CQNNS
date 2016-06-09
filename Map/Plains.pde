class Plains extends Terrain{
  Plains(){
    super();
    hindrance = 0;
    img = loadImage("plain_01.png");
  }
  
  Plains(int newx, int newy){
    super(newx, newy, 1);
    img = loadImage("plain_01.png");
  }
  
  //void draw(){
  //  fill(color(0, 255, 0));
  //  rect(x, y, 16, 16);
    
  //}
  
}