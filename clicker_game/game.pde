void game(){
  background(#E6FA12);
  gameoversong.rewind();
  //pause button
  stroke(0);
  fill(255);
  circle(100,100,100);
    fill(0);
   textSize(30);
  text("Pause",65,110);
  if (score > highscore) {
  highscore = score;
  
}
selectedtarget();
  
  
  
  
  
fill(0);
textSize(100);
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
    vx=vy*1.01;
    vy=vx*1.01;
    point.rewind();
    point.play();
  }else if (dist(mouseX,mouseY,100,100)<50){
    mode=pause;
  
  
  
  }else{
    lives=lives-1;
    losealife.rewind();
    losealife.play();
  }
  if (lives==0){ 
    mode=gameover;
  }
}


void target1(){
    stroke(#FA1D12);
  fill(255);
  strokeWeight(5);
  circle(x,y,d);
  circle(x,y,d-20);
  circle(x,y,d-40);
circle(x,y,d-60);
  circle(x,y,d-80);
}

void target1still(){

      stroke(#FA1D12);
  fill(255);
  strokeWeight(5);
  circle(100,200,d);
  circle(100,200,d-20);
  circle(100,200,d-40);
circle(100,200,d-60);
  circle(100,200,d-80);
}

void target2still(){
  
  circle(300,200,100);
  image(sniper,262,150,75,100);
}
  
  void target3still(){
   
  circle(500,200,100);
  image(red,462,150,75,100);
}

void target2() {
       stroke(#FA1D12);
  fill(255);
  circle(x,y,100);
  image(sniper,x-38,y-50,75,100);
}

void target3() {
       stroke(#FA1D12);
  fill(255);
  circle(x,y,100);
  image(red,x-38,y-50,75,100);
}

void selectedtarget(){
    if (selectedtarget == 1) {
  target1();
} else if (selectedtarget == 2) {
  target2();
} else if (selectedtarget == 3) {
  target3();
}
}

void stillselectedtarget(){
    if (stillselectedtarget == 1) {
  target1still();
} else if (stillselectedtarget == 2) {
  target2still();
} else if (stillselectedtarget == 3) {
  target3still();
}
}
