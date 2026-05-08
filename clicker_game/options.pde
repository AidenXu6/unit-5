void options(){
  background(#1D7C01); 
  fill(255);
    tactilerect(600,600,125,60);
  rect(600,600,125,60);
  fill(0);
    textSize(57);
  text("Back",600,650);
  scale(1.3);
  target1still();
  target2still();
  
}




void optionsClicks(){
   if (mouseX>600&&mouseX<725&&mouseY>600&&mouseY<660){
 mode=intro;
   theme.loop();
   }
}
