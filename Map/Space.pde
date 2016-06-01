class Space{
    Unit _unit;
    Terrain _terrain;
    
    Space(){
      _unit = null;
      _terrain = null;
    }
    
    void draw(){
       if (_unit != null){
           _unit.draw();
       }
       if (_terrain != null){
           _terrain.draw();
       }
    }
       
}