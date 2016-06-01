Unit[] unit;
Unit sel;
int selNum;

void setup(){ 
  size(500,500);
  unit = new Unit[25];
  for(int i=0; i < unit.length; i++){
    unit[i] = new Unit(10);
  }
  sel = unit[0];
  selNum = 0;
  CLL<String> test = new CLL<String>();
  test.add("Test");
  System.out.println(test);
  test.add("You");
  System.out.println(test);
}

void draw(){
  background(0);
  for(int i = 0; i < unit.length; i++){
    unit[i].draw(); 
  }
}

void mouseClicked(){
  for(int i = 0; i<unit.length; i++){
    if((unit[i].x > mouseX - 10 && unit[i].x < mouseX + 10) && (unit[i].y > mouseY - 10 && unit[i].y < mouseY + 10)){ 
      sel = unit[i];
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
     if(selNum == 24){
       sel = unit[0];
       selNum = 0;
     }
     else{     
       selNum++;
       sel = unit[selNum];
     }
   }
}