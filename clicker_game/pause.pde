void pause(){
 theme.pause();
 gameoversong.pause();
 fill(#FF0303);
 textSize(200);
      text("PAUSED",50,500);
}



void pauseClicks(){
  if (dist(mouseX,mouseY,100,100)<50){
    mode=game;
    theme.loop();
  }

 
}
