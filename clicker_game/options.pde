void options(){
  background(#1D7C01); 
  fill(255);
    tactilerect(600,600,125,60);
  rect(600,600,125,60);
  fill(0);
    textSize(57);
  text("Back",600,650);
  
  target1still();
  target2still();
  target3still();
  stillselectedtarget();
  
}




void optionsClicks(){
   if (mouseX>600&&mouseX<725&&mouseY>600&&mouseY<660){
 mode=intro;
   theme.loop();
   }
     // target 1
  if (dist(mouseX,mouseY,100,200)<100) {
    selectedtarget = 1;
  }

  // target 2
  if (dist(mouseX,mouseY,300,200)<100) {
    selectedtarget = 2;
  }

  // target 3
  if (dist(mouseX,mouseY,500,200)<100) {
    selectedtarget = 3;
  }
}
