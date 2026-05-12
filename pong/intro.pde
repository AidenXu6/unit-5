void intro(){
   background(#006d77);
  fill(#83c5be);
  strokeWeight(5);
  tactilerect(275,350,200,100);
  rect(275,350,200,100);
  tactilerect(275,500,200,100);
  rect(275,500,200,100);
   fill(#064789);
  textSize(90);
  text("Start",285,425);
  textSize(57);
  text("Options",280,570);
  textSize(100);
  text("Pong",267,300);
  
}


void introClicks(){
   if (mouseX>275&&mouseX<475&&mouseY>350&&mouseY<450){
 mode=game;
 
 }else if (mouseX>275&&mouseX<475&&mouseY>500&&mouseY<600){
   mode=options;
  
 }
  
}

void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    stroke(#427aa1);
  } else {
    stroke (#edf6f9);
  }
}
