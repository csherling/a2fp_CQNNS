class Space{
    Unit _unitG;
    //Unit _unitA;
    //Unit _unitS;
    Terrain terrain;
    //Terrain _air;
    //Terrain _space;
    
    Space(){
      _unitG = null;
      terrain = null;
      /*
      _unitA = null;
      _unitS = null;
      _ground = null;
      _air = null;
      _space = null;
      */
    }
    
    Space(Terrain newTerr){
      _unitG = null;
      terrain = newTerr;
    }
    
    void draw(){ //booleans depending on phase
       terrain.draw();
       if (_unitG != null){
           _unitG.draw();
       }
       /*
       if (_terrain != null){
           _terrain.draw();
       }
       */
    }
       
}