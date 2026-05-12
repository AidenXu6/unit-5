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
  if(x<diameter/2|| x>width-diameter/2){
    vx=vx*-1;
  }
    if(y<diameter/2|| y>height-diameter/2){
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
  circle(x,y,diameter);
  circle(x,y,diameter-20);
  circle(x,y,diameter-40);
circle(x,y,diameter-60);
  circle(x,y,diameter-80);
}

void target1still(){

      stroke(#FA1D12);
  fill(255);
  strokeWeight(5);
  circle(100,150,diameter);
  circle(100,150,diameter-20);
  circle(100,150,diameter-40);
circle(100,150,diameter-60);
  circle(100,150,diameter-80);
}

void target2still(){
  
  circle(300,150,diameter);
  image(sniper,262,100,75,100);
}
  
  void target3still(){
   
  circle(500,150,diameter);
  image(red,462,100,75,100);
}

void target2() {
       stroke(#FA1D12);
  fill(255);
  circle(x,y,diameter);
  image(sniper,x-38,y-50,75,100);
}

void target3() {
       stroke(#FA1D12);
  fill(255);
  circle(x,y,diameter);
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

void target1show(){

      stroke(#FA1D12);
  fill(255);
  strokeWeight(5);
  circle(500,450,diameter);
  circle(500,450,diameter-20);
  circle(500,450,diameter-40);
circle(500,450,diameter-60);
  circle(500,450,diameter-80);
}

void target2show(){
  
  circle(500,450,diameter);
  image(sniper,462,400,75,100);
}
  
  void target3show(){
   
  circle(500,450,diameter);
  image(red,462,400,75,100);
}

void showselectedtarget(){
    if (selectedtarget == 1) {
  target1show();
} else if (selectedtarget == 2) {
  target2show();
} else if (selectedtarget == 3) {
  target3show();
}
}
