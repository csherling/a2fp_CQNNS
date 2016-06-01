class Space{
    Unit _unitG;
    Unit _unitA;
    Unit _unitS;
    Terrain _ground;
    Terrain _air;
    Terrain _space;
    
    Space(){
      _unitG = null;
      _unitA = null;
      _unitS = null;
      _ground = null;
      _air = null;
      _space = null;
    }
    
    void draw(){ //booleans depending on phase
       if (_unit != null){
           _unit.draw();
       }
       if (_terrain != null){
           _terrain.draw();
       }
    }
       
}