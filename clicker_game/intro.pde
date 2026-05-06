void intro(){
  background(#1D7C01);
  fill(255);
  tactilerect(275,350,200,100);
  rect(275,350,200,100);
   fill(0);
  textSize(90);
  text("Start",285,425);
  textSize(100);
  text("Clicker Game",100,300);
}



void introClicks(){
 if (mouseX>275&&mouseX<475&&mouseY>350&&mouseY<450){
 mode=game;
 }
  
}

void tactilerect(int x, int y, int w, int h) {
  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    stroke(#FF001E);
  } else {
    stroke (0);
  }
}
