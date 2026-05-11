void gameover(){
background(255);
theme.pause();
gameoversong.play();
 fill(#FF0303);
 textSize(150);
      text("GAME OVER",50,500);
      textSize(75);
      text("Highscore:"+highscore,200,600);
}

void gameoverClicks(){
  theme.rewind();
  theme.loop();
  mode=intro;
    score=0;
  lives=3;
  
}
