void game(){
  background(#ead7c3);
  
  if (timer<0){
  ballx=ballx+vx;
  bally=bally+vy;
  }
  
  //scroing
  if(ballx<0){
    rightscore=rightscore+1;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
    if(ballx>800){
    leftscore=leftscore+1;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  

if(bally<=balld/2||bally>=height-balld/2){
  vy=vy*-1;
}

if (dist(ballx,bally,rightx,righty)<balld/2+rightd/2){
 vx=(ballx-rightx)/10;
 vy=(bally-righty)/10;
}

if (dist(ballx,bally,leftx,lefty)<balld/2+leftd/2){
 vx=(ballx-leftx)/10;
 vy=(bally-lefty)/10;
}

//center line
strokeWeight(5);
stroke(255);
line(width/2,0,width/2,height);

//scoreboard
textSize(50);
fill(#1F6F5F);
text(leftscore,width/4,100);
fill(#6FCF97);
text(rightscore,3*width/4,100);

//timer
timer=timer-1;

  
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
  
}


void gameClicks(){
  
}
