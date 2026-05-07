void gameover(){
background(255);
theme.pause();
gameoversong.play();
 fill(#FF0303);
 textSize(150);
      text("GAME OVER",50,500);
      textSize(20);
      text("click anywhere to continue",300,600);
}

void gameoverClicks(){
  theme.rewind();
  mode=intro;
    score=0;
  lives=3;
  
}
