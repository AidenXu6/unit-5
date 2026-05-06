void game(){
  background(#E6FA12);
target();
fill(0);
text("Score:"+score,190,75);
  text("Lives:"+lives,200,150);
  //moving
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if(x<d/2|| x>width-d/2){
    vx=vx*-1;
  }
    if(y<d/2|| y>height-d/2){
    vy=vy*-1;
  }
  
}

void gameClicks(){
  if(dist(mouseX,mouseY,x,y)<d){
    score=score+1;
  }else{
    lives=lives-1;
  }
  if (lives==0){ 
    mode=gameover;
  }
}


void target(){
    stroke(#FA1D12);
  fill(255);
  strokeWeight(5);
  circle(x,y,d);
  circle(x,y,d-20);
  circle(x,y,d-40);
circle(x,y,d-60);
  circle(x,y,d-80);
}
