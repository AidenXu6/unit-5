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
  showselectedtarget();
    diameter=map(sliderX,700,100,100,200);
  line(100,300,100,700);
  ellipse(100,sliderX,50,50);
  textSize(50);
  text("Select Target:",10,50);
  textSize(40);
  text("Target Preview:",375,350);
}

void optionsClicks(){
   if (mouseX>600&&mouseX<725&&mouseY>600&&mouseY<660){
 mode=intro;
   theme.loop();
   }
     // target 1
  if (dist(mouseX,mouseY,100,150)<100) {
    selectedtarget = 1;
  }

  // target 2
  if (dist(mouseX,mouseY,300,150)<100) {
    selectedtarget = 2;
  }

  // target 3
  if (dist(mouseX,mouseY,500,150)<100) {
    selectedtarget = 3;
  }
}

  void mouseDragged(){
controlSlider();
    }
    
        void mousePressed(){
controlSlider();
  }
  
    void controlSlider(){
      if(mouseX>50&&mouseX<150&&mouseY>300&&mouseY<700){
    sliderX=mouseY;
    }
  }
  
