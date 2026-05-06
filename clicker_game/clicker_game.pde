//Aiden Xu


//mode variables
int mode;
final int intro=0;
final int game=1;
final int pause=2;
final int gameover=3;

//Target Variables
float x,y,d;
float vx,vy; //target velocity
float score,lives;


void setup() {
  size(800, 800);
  mode=intro;
  
  //target intialization
  x=width/2;
  y=height/2;
  d=100; 
  
  
  //moving
  vx=random(-5,5);
  vy=random(-5,5);
  
  score=0;
  lives=3;
  
  
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error:Mode="+mode);
  }
}
