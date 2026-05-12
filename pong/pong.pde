void game(){
  background(#ead7c3);
  
  ballx=ballx+v;
  bally=bally+v;
  
  // draw paddles
  fill(#dce0d9);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if(wkey==true)lefty=lefty-5;
  if(skey==true)lefty=lefty+5;
    if(upkey==true)righty=righty-5;
  if(downkey==true)righty=righty+5;
  
  //ball
  fill(#fbf6ef);
  circle(ballx,bally,balld);
  
  if(ballx<balld/2|| ballx>width-balld/2){
    v=v*-1;
  }
    if(bally<balld/2|| bally>height-balld/2){
    v=v*-1;
  }
}


void gameClicks(){
  
}
