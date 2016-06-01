//TestUnit[] TestUnit;
Unit sel;
CLL<Unit> unit;
int selNum;

void setup(){ 
  size(500,500);
  //TestUnit = new TestUnit[25];
  unit = new CLL<Unit>();
  //for(int i=0; i < TestUnit.length; i++){
  //  TestUnit[i] = new TestUnit(10);
  //}  
  unit.add(new Infantry());
  sel = unit.get(0);
  selNum = 0;
  CLL<String> test = new CLL<String>();
  test.add("Test");
  System.out.println(test);
  test.add("You");
  System.out.println(test);
}

void draw(){
  background(0);
  //for(int i = 0; i < TestUnit.length; i++){
  //  TestUnit[i].draw(); 
  //}
  for(int i = 0; i < unit.size(); i++){
    unit.get(i).draw(); 
  }

}

void mouseClicked(){
  //for(int i = 0; i<TestUnit.length; i++){
  //  if((TestUnit[i].x + 10 > mouseX && TestUnit[i].x < mouseX) && (TestUnit[i].y + 10 > mouseY && TestUnit[i].y < mouseY)){ 
  //    sel = TestUnit[i];
  //    selNum = i;
  //  }
  //}
  for(int i = 0; i<unit.size(); i++){
    if((unit.get(i).x + 10 > mouseX && unit.get(i).x < mouseX) && (unit.get(i).y + 10 > mouseY && unit.get(i).y < mouseY)){ 
      sel = unit.get(i);
      selNum = i;
    }
  }

}

void keyPressed(){
   if(keyCode == UP){
     sel.y = sel.y - 10;
   }
   else if(keyCode == DOWN){
     sel.y = sel.y + 10;
   }
   else if(keyCode == LEFT){
     sel.x = sel.x - 10;
   }
   else if(keyCode == RIGHT){
     sel.x = sel.x + 10;
   }
   else if(keyCode == ENTER){
     if(selNum == unit.size() - 1){
       sel = unit.get(0);
       selNum = 0;
     }
     else{     
       selNum++;
       sel = unit.get(selNum);
     }
   }
   else if(keyCode == BACKSPACE){
     unit.add(new Infantry());
   }
}